clear all
close all
clc

addpath('/home/beams/repos/thesis_ulb/Matlab_scripts/matlab_utils-master')


%% Read from the file
Nsamples=1024;

file= '/home/beams/repos/thesis_ulb/Matlab_scripts/Gnuradio_Samples/FFT_fpga_image/sampled_data_multi_sig_Bluethoot_std_fc_100M_fs_10M_fft_image_v1.dat';

inFileMatlab = fopen('results_binary_matlab.txt','r');
inFileSim = fopen('/home/beams/repos/thesis_ulb/FPGA_ISE/Square_Mag/square_mag_v1/results_sim.txt','r'); %simulation results with ip cores FIR
%inFileSim = fopen('/home/beams/repos/thesis_ulb/FPGA_ISE/Square_Mag/fft_sq_mag/results_sim.txt','r');
Y=read_complex_binary(file);  %complex signal read from the file


samples=0;

for j=1:6999
    resultsSim(j,1) = fscanf(inFileSim,'%d',[1]);
    resultMat(j,1) = fscanf(inFileMatlab,'%d',[1]);
    samples(j)= j;
end

%% Decoding the samples valuesSim
nb=16;

%resultsSim = resultsSim./2^(2*nb-1 -11);
%Y_sq = abs(Y).^2;

err_a = abs(resultMat-resultsSim);

%% FFT on the samples created
fc=100e3; %cut-off frequencySim
fs=10e6;   %sample rate frequency
N=1024;
T=[0:1/(fs):N/fs];


M=1024;     %number of points
fo = fs/M;                           %frequency resolution
f= (-(M-1)/2:(M-1)/2)*fo ;                       %frequency points for plotting

for(j=0:1:3)

figure(1);
subplot(2,1,1)
plot(f./1e6,abs(fftshift(resultMat([j*N+1: j*N+N],1))),'r')
title("SQM Matlab")
xlabel("f")
ylabel("|Y|²")

subplot(2,1,2)
plot(f./1e6,abs(fftshift(resultsSim([j*N+1:j*N+N],1))),'b')
title("SQM Simulation")
xlabel("f")
ylabel("|Y|²")


% figure(2)
% plot(f./1e6,fftshift(err_a([j*N+1:j*N+N])));
% title("SQM Matlab Discretized - SQM Simulation")
% xlabel("f")
% ylabel("||Y_m|²-|Y_s|²|")

pause()
end