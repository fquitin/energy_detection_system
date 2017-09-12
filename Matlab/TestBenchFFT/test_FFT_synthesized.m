clc
close all
clear all

addpath('/home/beams/Documents/Riccardo_Pace_Thesis/Matlab_scripts/matlab_utils-master')

addpath('/home/beams/repos/thesis_ulb/Matlab_scripts/Energy_Detection')

select = 1;


%% Initial Parameters

Fs=10e6;          %Sampling
Ts=1/Fs;          %Sampling Period
Fc=900e6;     %Center Frequency

filename = '../Samples/FFT_fpga_image/WBX/FFT_module/sampled_data_sig_TETRA_std_fc_400M_fs_10M_fft_image_v2.dat';

complex_signal_usrp=read_complex_binary(filename);  %complex signal read from the file

complex_signal_usrp = complex_signal_usrp*2^11;

%% Time Domain Analysis
n = length(complex_signal_usrp);  %Sampling points
t = 0:Ts:(n * Ts)-Ts;             %time
[s1,s2]= size(complex_signal_usrp);

%% Frequency Domain Analysis
N=1024     %number of points
fo = Fs/N;                           %frequency resolution
f=(0:N-1)*fo + (Fc-Fs/2);%frequency points for plotting
w = ones(1024,1);
power = w'*w;


for k=0:5

Y=(abs(fftshift(complex_signal_usrp((k*N)+1:((k*N)+N),1)))).^2;

Y_x=zeros(N,1);

for l=1:1:N
   Y_x(l,1)= Y(N-l+1,1); 
end

Y=Y_x;
Y_db = 10*log10(Y);

figure(1);
set(gcf, 'Position', get(0,'Screensize')); % Maximize figure. 
subplot(2,1,1)
plot(f/1e6,Y,'-b*');
xlabel("Frequency[MHz]");
ylabel("Amplitude Linear");


subplot(2,1,2);
plot(f/1e6,Y_db);
xlabel("Frequency[MHz]");
ylabel("Amplitude[dB]");
pause()

end

