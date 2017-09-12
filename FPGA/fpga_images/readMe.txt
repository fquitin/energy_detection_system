All files inside this folder are the images synthesized with Xilinx ISE 12.2.
The images can be flashed in the USRP with the commands inside the "Command_to_flash_FPGA_image"

- ed_adaptive_threshold_image.bin -> fpga image that includes the FFT, SQM, DC elimination, D factor evaluation, Energy detector, Data Synchronizer. The n bins inside a subbandwidth can be selected from 1 up to 1024.

- ed_fixed_threshold_image.bin -> fpga image that includes the FFT, SQM, Energy detector, Data Synchronizer.The n bins inside a subbandwidth can be selected from 1 up to 1024.

- fft_sq_m_image -> fpga image that includes the FFT, SQM, Data Synchronizer.

- fft_image -> fpga image that includes the FFT, Data Synchronizer

- fpga_default_image -> fpga default image of USRP N210.

The Data Synchronizer is able to adapt the sample rate when the ratio f_clock/sample_rate is an integer value.
