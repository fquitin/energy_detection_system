#include <uhd/types/tune_request.hpp>
#include <uhd/utils/thread_priority.hpp>
#include <uhd/utils/safe_main.hpp>
#include <uhd/usrp/multi_usrp.hpp>
#include <uhd/exception.hpp>
#include <uhd/usrp/dboard_iface.hpp>
#include <uhd/usrp/dboard_id.hpp>
#include <uhd/usrp/dboard_base.hpp>
#include <uhd/usrp/dboard_manager.hpp>
#include <boost/program_options.hpp>
#include <boost/format.hpp>
#include <boost/thread.hpp>
#include <iostream>
#include <fstream>
#include <csignal>
#include <complex>
#include <math.h>
#include <gnuplot-iostream.h>

#define TC_ADDRESS 0
#define TH_ADDRESS 1
#define RESET_ADDRESS 2
#define WINDOW_SIZE_ADDRESS 3
#define DC_EL_TC1_ADDRESS 4
#define DC_EL_TC2_ADDRESS 5
#define DC_EL_TC3_ADDRESS 6


namespace po = boost::program_options;

class ed_type{
public:
  uint32_t detect;
  uint32_t sq_m;
  
};

//signal definition con ctrl+c


static bool stop_signal_called = false;
void sig_int_handler(int){stop_signal_called = true;}

uint32_t value_terminal_count(double sample_rate){

  uint32_t terminal_count;
  
  terminal_count= (100e6/sample_rate)-1;

  return terminal_count;

}

void value_dc_terminal_count(uint32_t terminal_count[] ,double target_freq,double rf_freq,double sample_rate){

    double dc;
  dc = target_freq - rf_freq;
 
  if(dc == 0){
    
    terminal_count[0] = 0;
    terminal_count[1] = 1;
    terminal_count[2] = 1023;

  }else {

    if (dc < 0){

      terminal_count[0] = (uint32_t)(1024-((0-dc)*1024/sample_rate));

      if(terminal_count[0] == 1023)
	terminal_count[1] = 0;
      else
	terminal_count[1] = terminal_count[0]+1;

   	terminal_count[2] = terminal_count[0]-1;
     
    } else {

      terminal_count[0] = (uint32_t)((dc*1024/sample_rate));

      terminal_count[1] = terminal_count[0]+1;
      
      terminal_count[2] = terminal_count[0]-1;      
    }
  }
  
}

template<typename samp_type> void recv_to_file(
    uhd::usrp::multi_usrp::sptr usrp,
    const std::string &cpu_format,
    const std::string &wire_format,
    const std::string &file,
    size_t samps_per_buff,
    unsigned long long num_requested_samples,
    bool enable_size_map = false
					       );

//MAIN OF THE PROGRAM
int UHD_SAFE_MAIN(int argc, char *argv[]){
    uhd::set_thread_priority_safe();

    std::string args("addr=192.168.192.1,type=usrp2");//multi uhd device address args
    std::string title("");//name of the file to write binary samples to
    std::string type("short");//sample type: double, float, or short
    std::string ant("RX2");
    std::string subdev("A:0");
    std::string ref("internal");
    std::string wirefmt("sc16");
    size_t total_num_samps(9216);//total number of samples to receive
    size_t spb(10000);// samples per buffer
    double rate(10e6);// rate incoming samples
    double freq;//RF center Frequency
    double gain;//gain of the amplifier
    double setup_time(0.5);
    int window_size;//power of 2 !!!!!!!!
    int threshold;
    uint32_t dc_tc[3];

     //setup the program options
    po::options_description desc("Allowed options");
    desc.add_options()
      ("help", "help message")
      ("rate", po::value<double>(&rate)->default_value(10e6), "sample rate")
      ("file", po::value<std::string>(&title), "RF center frequency in Hz")
      ("freq", po::value<double>(&freq)->default_value(100e6), "RF center frequency in Hz")
      ("gain", po::value<double>(&gain)->default_value(0), "gain for the RF chain")
      ("th",po::value<int>(&threshold)->default_value(10),"threshold integer value")
      ("w_sz",po::value<int>(&window_size)->default_value(8),"window size value only power of 2 greater than 8")
      ("n_samp",po::value<size_t>(&total_num_samps)->default_value(2048),"number of samples to receive multiple of 1024")
    ;
    
    po::variables_map vm;
    po::store(po::parse_command_line(argc, argv, desc), vm);
    po::notify(vm);

    //print the help message
    if (vm.count("help")) {
        std::cout << boost::format("UHD RX samples to file %s") % desc << std::endl;
        std::cout
            << std::endl
            << "This application streams data from a single channel of a USRP device and plot the result usign GNU Plot.\n"
            << std::endl;
        return ~0;
    }
    
    //create a usrp device
    std::cout << std::endl;
    std::cout << boost::format("Creating the usrp device with: %s...") % args << std::endl;
    uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(args);//instantiation of the usrp variable

    //Lock mboard clocks
    usrp->set_clock_source(ref);
    //usrp->set_rx_lo_source("internal",ALL_LOS,0);
    
    //always select the subdevice first, the channel mapping affects the other settings
    usrp->set_rx_subdev_spec(subdev);
    std::cout << boost::format("Using Device: %s") % usrp->get_pp_string() << std::endl;

    //set the sample rate
    std::cout << boost::format("Setting RX Rate: %f Msps...") % (rate/1e6) << std::endl;
    usrp->set_rx_rate(rate);
    std::cout << boost::format("Actual RX Rate: %f Msps...") % (usrp->get_rx_rate()/1e6) << std::endl << std::endl;

    // set the terminal count of the FFT_FPGA_image
    uint32_t tc = value_terminal_count(rate);
    usrp->set_user_register(0,tc,0);
    std::cout << boost::format("Value for the terminal count selected is: %d")%tc << std::endl << std::endl;
     
    //set the center frequency
    std::cout << boost::format("Setting RX Freq: %f MHz...") % (freq/1e6) << std::endl << std::endl;
    uhd::tune_request_t tune_request(freq);
    tune_request.args = uhd::device_addr_t("mode_n=integer");
    tune_request.dsp_freq_policy = uhd::tune_request_t::policy_t(int('A'));
    tune_request.rf_freq_policy = uhd::tune_request_t::policy_t(int('A'));
    uhd::tune_result_t tune_result=usrp->set_rx_freq(tune_request);
    value_dc_terminal_count(dc_tc,tune_result.target_rf_freq,tune_result.actual_rf_freq, rate);
    
    
    std::cout << boost::format("Actual RX Freq: %f MHz...") % (usrp->get_rx_freq()/1e6) << std::endl << std::endl;
    std::cout << tune_result.to_pp_string()<<std::endl;

    //set the rf gain
    std::cout << boost::format("Setting RX Gain: %f dB...") % gain << std::endl;
    usrp->set_rx_gain(gain);
    std::cout << boost::format("Actual RX Gain: %f dB...") % usrp->get_rx_gain() << std::endl << std::endl;

    //set the antenna
    usrp->set_rx_antenna(ant);

    boost::this_thread::sleep(boost::posix_time::seconds(setup_time)); //allow for some setup timed

    //Reset of the custom FPGA
    usrp->set_user_register(RESET_ADDRESS,1,0);
    boost::this_thread::sleep(boost::posix_time::seconds(0.1)); //allow for some setup timed
    usrp->set_user_register(RESET_ADDRESS,0,0);
    

    //Set threshold of the Energy detector Module
    usrp->set_user_register(TH_ADDRESS,threshold,0);

    //Set the window size of the Energy detector Module
    usrp->set_user_register(WINDOW_SIZE_ADDRESS,window_size-1,0);

    //Set the TC1 TC2 TC3  for DC elimination
    usrp->set_user_register(DC_EL_TC1_ADDRESS,dc_tc[0],0);
    usrp->set_user_register(DC_EL_TC2_ADDRESS,dc_tc[1],0);
    usrp->set_user_register(DC_EL_TC3_ADDRESS,dc_tc[2],0);

    //definition the format of variable to pass to the rec_to_file function
#define recv_to_file_args(format)					\
    (usrp, format, wirefmt, title, spb, total_num_samps)


    //recall receive to file function changin also the format
    recv_to_file<std::complex<int16_t> >recv_to_file_args("sc16");
    
    //finished
    std::cout << std::endl << "Done!" << std::endl << std::endl;

    return EXIT_SUCCESS;
}

template<typename samp_type> void recv_to_file(
    uhd::usrp::multi_usrp::sptr usrp,
    const std::string &cpu_format,
    const std::string &wire_format,
    const std::string &title,
    size_t samps_per_buff,
    unsigned long long num_requested_samples,
    bool enable_size_map = false
){
    
    //create a receive streamer
    uhd::stream_args_t stream_args(cpu_format,wire_format);
    uhd::rx_streamer::sptr rx_stream = usrp->get_rx_stream(stream_args);

    uhd::rx_metadata_t md;
    std::vector<samp_type> buff(samps_per_buff);
    std::vector<ed_type> buff_ed(samps_per_buff);
   
    //setup streaming
    uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
    stream_cmd.num_samps = size_t(num_requested_samples);
    stream_cmd.stream_now = true;
    rx_stream->issue_stream_cmd(stream_cmd);

    std::cout << boost::format("Num_requested_samples: ")<< num_requested_samples << std::endl;
    size_t num_rx_samps = rx_stream->recv(&buff.front(), buff.size(), md, 3.0, false);//receive the samples
    std::cout << boost::format("Number of samples received in one packet")<< num_rx_samps << std::endl;

    if (md.error_code == uhd::rx_metadata_t::ERROR_CODE_TIMEOUT) {
      std::cout << boost::format("Timeout while streaming") << std::endl;
    }
    if (md.error_code != uhd::rx_metadata_t::ERROR_CODE_NONE){
      std::string error = str(boost::format("Receiver error: %s") % md.strerror());
      throw std::runtime_error(error);
    }
    
     for (int i=0;i<num_requested_samples;i++){

       buff_ed[i].sq_m = ((uint16_t(buff[i].real())<<17)|(uint16_t(buff[i].imag()<<1)))>>1;
       buff_ed[i].detect = (uint16_t(buff[i].real())>>15);   
     
     }

     Gnuplot gp("gnuplot -persist");
     int k=0;
     for(int j=0;j<num_requested_samples;j+=1024){

       std::vector<std::pair<double, double> > xy_pts_A_tmp,xy_pts_A;
       std::vector<std::pair<double, double> > xy_pts_B_tmp,xy_pts_B;
     
       int x=0;
       for(double i=1024/2-1; i>=0; i--) {
	 double y =log10( buff_ed[i+j].sq_m);
	 //double y =( buff_ed[i+j].sq_m);
	 xy_pts_A.push_back(std::make_pair(x, y));
	 y = buff_ed[i+j].detect;
	 xy_pts_B.push_back(std::make_pair(x, y));
	 x++;
       }
       
       for(double i=1023; i>1024/2-1; i--) {
	 double y = log10(buff_ed[i+j].sq_m);
	 //double y =( buff_ed[i+j].sq_m);
	 xy_pts_A.push_back(std::make_pair(x, y));
	 y = buff_ed[i+j].detect;
	 xy_pts_B.push_back(std::make_pair(x, y));
	 x++;
       }

       gp <<"set term wxt "<< k << "\n";
       gp <<"set multiplot layout 2, 1 title \"Energy Detection "<<title<<"\" font \",14\" \n";
       gp <<"set tmargin 2 \n";
       gp <<"set title \"|Y|²\" \n";
       gp <<"unset key\n";
       gp <<"set xrange [0:1024]\n";
       gp <<"set format y \"%e\" \n";
       gp <<"set yrange [0:10]\n";
       gp <<"plot"<< gp.file1d(xy_pts_A,"sqm_data.dat") << "with point title 'SQM'"<<std::endl;
       gp <<"set title \"Detection\" \n";
       gp <<"unset key\n";
       gp << "set xrange [0:1024]\n";
       gp <<"set yrange [0:1]\n";
       gp << "plot" << gp.file1d(xy_pts_B,"det_data.dat") << "with lines title 'DETECTION'"<<std::endl;
       gp << "unset multiplot\n";

       std::cout << "Press enter for the next frame!" << std::endl;
       std::cin.get();
     }
}
