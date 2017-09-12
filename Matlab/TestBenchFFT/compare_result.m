clear all
close all
clc


%% Read from the file
Nsamples=1024;

inFileMatlab_q = fopen('results_matlab_q.txt','r');
inFileMatlab_i = fopen('results_matlab_i.txt','r'); %simulation results with home made FIR
inFileSim_q = fopen('results_sim_q.txt','r'); %simulation results with ip cores FIR
inFileSim_i = fopen('results_sim_i.txt','r'); %simulation results with ip cores FIR
inFileC_q = fopen('results_c_q.txt','r'); %simulation results with ip cores FIR
inFileC_i = fopen('results_c_i.txt','r'); %simulation results with ip cores FIR
samples=0;

for j=1:Nsamples
    resultsMatlab_q(j) = fscanf(inFileMatlab_q,'%f',[1]);
    resultsMatlab_i(j) = fscanf(inFileMatlab_i,'%f',[1]);
    resultsSim_q(j) = fscanf(inFileSim_q,'%f',[1]);
    resultsSim_i(j) = fscanf(inFileSim_i,'%f',[1]);
    resultsC_q(j) = fscanf(inFileC_q,'%f',[1]);
    resultsC_i(j) = fscanf(inFileC_i,'%f',[1]);
    samples(j)= j;
end

%% Decoding the samples valuesSim
nb=16;
resultsMatlab_q = resultsMatlab_q;%./2^(nb-1);
resultsMatlab_i = resultsMatlab_i;%./2^(nb-1);
resultsSim_q = resultsSim_q./2^(nb-1 -11);
resultsSim_i = resultsSim_i./2^(nb-1 -11);
resultsC_q = 2^11 * resultsC_q;
resultsC_i = 2^11 * resultsC_i;



resultsMatlab = resultsMatlab_q + i*resultsMatlab_i;
resultsSim = resultsSim_q + i*resultsSim_i;
resultsC = resultsC_q + i*resultsC_i;

%% FFT on the samples created
fc=100e3; %cut-off frequencySim
fs=10e6;   %sample rate frequency
N=1024;
T=[0:1/(fs):N/fs];


M=1024;     %number of points
fo = fs/M;                           %frequency resolution
f= (-(M-1)/2:(M-1)/2)*fo ;                       %frequency points for plotting

figure(1);
subplot(3,1,1)
plot(f./1e6,abs(fftshift(resultsMatlab)).^2,'r')
title("FFT Matlab")
xlabel("f")
ylabel("|Y|")

subplot(3,1,2)
plot(f./1e6,abs(fftshift(resultsSim)).^2,'b')
title("FFT Simulation")
xlabel("f")
ylabel("|Y|")

subplot(3,1,3)
plot(f./1e6,abs(fftshift(resultsC)),'g')
title("FFT C model")
xlabel("f")
ylabel("|Y|")

figure(2)
% subplot(2,1,1)
% plot(f,abs(fftshift(resultsMatlab)),'r')
% hold on
% plot(f,abs(fftshift(resultsSim)),'b')
% hold on
% plot(f,abs(fftshift(resultsC)),'g')

%subplot(2,1,2)

plot(f./1e6,(abs(fftshift(resultsSim))-abs(fftshift(resultsMatlab))))%./(abs(fftshift(resultsMatlab))),'g')
title("Relative Error")
xlabel("f[Mhz]")
ylabel("|Y_sim|-|Y_mat|")

figure(3);
subplot(3,1,1)
plot(f./1e6,10*log10(abs(fftshift(resultsMatlab))),'r')

subplot(3,1,2)
plot(f./1e6,10*log10(abs(fftshift(resultsSim))),'b')

subplot(3,1,3)
plot(f,10*log10(abs(fftshift(resultsC))),'g')
