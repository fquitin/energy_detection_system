clc
close all
clear all
addpath('/home/beams/repos/thesis_ulb/Matlab_scripts/matlab_utils-master')

%% Initial Parameters

Fs=10e6;      %Sampling
Fc=900e6;     %Center Frequency
M=10000;
N=1024;

%filename='/home/beams/repos/thesis_ulb/Host_cpp_programs/WBX/Rx_n_samples_to_file_sq_m/build/sampled_data.dat';
filename='../Gnuradio_Samples/FFT_SQM_fpga_image/WBX/Fixed_Frequency/sampled_data_sig_Bluethoot_std_fc_400M_fs_10M_v4.dat'
%filename2='/home/beams/repos/thesis_ulb/Host_cpp_programs/WBX/Rx_n_samples_to_file/build/samples_data_fft_image.dat';
filename2='/home/beams/repos/thesis_ulb/Host_cpp_programs/WBX/Rx_n_samples_to_file/build/sampled_data_noise_wbx_fft.dat';
Y = read_int_binary(filename);

Y_2 = read_complex_binary_2(filename2);

fo = Fs/N;               %frequency resolution
f=(0:N-1)*fo + (Fc-Fs/2);%frequency points for plotting
    
for k=0:1:5
    
figure(1);
set(gcf, 'Position', get(0,'Screensize')); % Maximize figure. 
%subplot(2,1,1)
plot(f/1e6,flip(fftshift(Y([(k*N+1):(k*N+N)],1))),'-b');
xlabel("Frequency[MHz]");
ylabel("|Y|²");
grid on

% sq_m=real(Y_2([(k*N+1):(k*N+N)],1)).^2+imag(Y_2([(k*N+1):(k*N+N)],1)).^2;
% subplot(2,1,2)
% plot(f/1e6,flip(fftshift(sq_m)),'-b');
% xlabel("Frequency[MHz]");
% ylabel("|Y|²");
% grid on


    
end

for(k=1 : 8 : 1024*5)
    signal_energy(k)=sum(Y([(k):(k+8-1)],1));
end