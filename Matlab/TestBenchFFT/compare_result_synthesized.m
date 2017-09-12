clear all
close all
clc

addpath('../matlab_utils-master')

%% Read from the file
N=1024;
Fs=10e6;          %Sampling
Ts=1/Fs;          %Sampling Period
Fc=100e6;     %Center Frequency

usrp_default = '/home/beams/repos/thesis_ulb/Matlab_scripts/Gnuradio_Samples/Default_fpga_image/sampled_data_sig_multi_carrier_20_200kspacing_fc_100M_fs_10M.dat';
usrp_fft ='/home/beams/repos/thesis_ulb/Matlab_scripts/Gnuradio_Samples/FFT_fpga_image/BasicRx/sampled_data_sig_multi_carrier_20_200kspacing_fc_100M_fs_10M';

%usrp_default ='../Gnuradio_Samples/FFT_fpga_image/WBX/FFT_module/sampled_data_sig_TETRA_std_fc_400M_fs_10M_fft_image_v2_time.dat';
%usrp_fft ='../Gnuradio_Samples/FFT_fpga_image/WBX/FFT_module/sampled_data_sig_TETRA_std_fc_400M_fs_10M_fft_image_v2.dat';

signal_default=read_complex_binary(usrp_default);  %complex signal read from the file

signal_fft = read_complex_binary(usrp_fft)*2^11;


%% FFT on the samples created
k=2;
fo = Fs/N;               %frequency resolution
f=(0:N-1)*fo + (Fc-Fs/2);%frequency points for plotting    
signal_default = fft(signal_default((k*N)+1:((k*N)+N),1));
signal_default = abs(fftshift(signal_default)).^2;
signal_fft = abs(fftshift(signal_fft((k*N)+1:((k*N)+N),1))).^2;

figure(1);
subplot(2,1,1)
plot(f./1e6,signal_default,'r')
title("FFT default fpga image")
xlabel("f[Mhz]")
ylabel("|Y|²")

subplot(2,1,2)
plot(f./1e6,signal_fft,'b')
title("FFT fft fpga image")
xlabel("f[Mhz]")
ylabel("|Y|²")

figure(2)
% subplot(2,1,1)
% plot(f,abs(fftshift(resultsMatlab)),'r')
% hold on
% plot(f,abs(fftshift(resultsSim)),'b')
% hold on
% plot(f,abs(fftshift(resultsC)),'g')

%subplot(2,1,2)

plot(f./1e6,log10((signal_default-signal_fft)),'g')
title("Relative Error")
xlabel("f[Mhz]")
ylabel("|Y_sim|-|Y_mat|")

figure(3);
subplot(2,1,1)
plot(f./1e6,10*log10((signal_default)),'r')
title("FFT Matlab")
xlabel("f[Mhz]")
ylabel("|Y|²[db]")

subplot(2,1,2)
plot(f./1e6,10*log10((signal_fft)),'b')
title("FFT FPGA")
xlabel("f[Mhz]")
ylabel("|Y|²[db]")

figure(4)
plot(f./1e6,10*log10((signal_default/N^2)),'r*')
hold on
plot(f./1e6,10*log10((signal_fft/N^2)),'b*')
plot(f./1e6,10*log10(ones(N,1)*(2^(-15*2+22))/N^2),'g','LineWidth',2)
hold on
plot(f./1e6,10*log10((ones(N,1)*(4.87413727718838e-06)/N^2)),'m','LineWidth',2)
legend('matlab','FPGA image','min level FPGA','noise_power')
title('Comparison FPGA vs Matlab')
xlabel('f[Mhz]')
ylabel('|Y|²/N² [db]')

