clc
close all
clear all
addpath('../matlab_utils-master')


%% Initial Parameters

Fs=10e6;      %Sampling
Fc=900e6;     %Center Frequency

%% Read from binary file to complex

filename1='../Samples/FFT_fpga_image/WBX/Frequency_span/span_v2/sampled_data_multi_sig_Bluethoot_std_fc_900M_fs_10M_fft_image_v2'
filename2='../Samples/FFT_fpga_image/WBX/Frequency_span/span_v2/sampled_data_multi_sig_Bluethoot_std_fc_910M_fs_10M_fft_image_v2'
filename3='../Samples/FFT_fpga_image/WBX/Frequency_span/span_v2/sampled_data_multi_sig_Bluethoot_std_fc_920M_fs_10M_fft_image_v2'

complex_signal_usrp1=read_complex_binary(filename1);  %complex signal read from the file
complex_signal_usrp2=read_complex_binary(filename2);  %complex signal read from the file
complex_signal_usrp3=read_complex_binary(filename3);  %complex signal read from the file

complex_signal_usrp1 = complex_signal_usrp1*2^11;
complex_signal_usrp2 = complex_signal_usrp2*2^11;
complex_signal_usrp3 = complex_signal_usrp3*2^11;


%% Frequency Domain Analysis
N=1024     %number of points
fo = Fs/N;                           %frequency resolution
f=(0:N-1)*fo + (Fc-Fs/2);%frequency points for plotting

for i=1:1:5
Y_1=((abs(fftshift(complex_signal_usrp1((i*N)+1:((i*N)+N),1)))).^2/N^2);
Y_2=((abs(fftshift(complex_signal_usrp2((i*N)+1:((i*N)+N),1)))).^2/N^2);
Y_3=((abs(fftshift(complex_signal_usrp3((2*N)+1:((2*N)+N),1)))).^2/N^2);

Y_1 = flip(Y_1);
Y_2 = flip(Y_2);
Y_3 = flip(Y_3);
%Y_db1 = 10*log10(abs(fftshift(complex_signal_usrp1((2*N)+1:((2*N)+N),1))).^2/N^2);
%Y_db2 = 10*log10(abs(fftshift(complex_signal_usrp2((2*N)+1:((2*N)+N),1))).^2/N^2);
%Y_db3 = 10*log10(abs(fftshift(complex_signal_usrp3((2*N)+1:((2*N)+N),1))).^2/N^2);


figure(1);
set(gcf, 'Position', get(0,'Screensize')); % Maximize figure. 
subplot(3,1,1)
plot(f/1e6,Y_1,'-b*');
xlabel("Frequency[MHz]");
ylabel("Amplitude Linear");


subplot(3,1,2)
plot((f+10e6)./1e6,Y_2,'-b*');
xlabel("Frequency[MHz]");
ylabel("Amplitude Linear");


subplot(3,1,3)
plot(f/1e6,Y_3,'-b*');
xlabel("Frequency[MHz]");
ylabel("Amplitude Linear");
pause()

end



