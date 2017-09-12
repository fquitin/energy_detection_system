clc
close all
clear all
addpath('../matlab_utils-master')

%% Initial Parameters

Fs=10e6;      %Sampling
Fc=900e6;     %Center Frequency
M=10000;
N=1024;

filename='../Samples/ED_image/WBX/Fixed_Frequency/sampled_data_mult_sig_Bluethoot_std_fc_400M_fs_10M_v2.dat';

f = fopen (filename, 'rb');

X = fread (f, [2,inf], 'uint32');

fclose (f);

D = X(1,:);
Y = X(2,:);

fo = Fs/N;               %frequency resolution
f=(0:N-1)*fo + (Fc-Fs/2);%frequency points for plotting

%lambda = 3288;

%[1.48509468695033e-05]*(qfuncinv(0.00001)*sqrt(N/2)+N)*N*2^(30-22)

signal_energy = zeros(1,N*5);

for k=1:8:N*2
    signal_energy(1,[k:(k+7)])= sum(Y(1,[k:(k+7)]));
end

for k=0:1:1
figure(1);
set(gcf, 'Position', get(0,'Screensize')); % Maximize figure. 
subplot(3,1,1)
plot(f/1e6,flip(fftshift(Y(1,[(k*N+1):(k*N+N)]))),'b*');
xlabel("Frequency[MHz]");
ylabel("|Y|²");

subplot(3,1,2)
plot(f/1e6,[flip(fftshift(signal_energy(1,[(k*N+1):(k*N+N)])))],'-b');
ylim([0 100])
xlabel("Frequency[MHz]");
ylabel("sum(|Y|²)");

subplot(3,1,3)
plot(f/1e6,flip(fftshift(D(1,[(k*N+1):(k*N+N)]))),'-b');
xlabel("Frequency[MHz]");
ylabel("Detection");


% subplot(2,2,4)
% plot(f/1e6,ones(1,N)*lambda,'-b');
% xlabel("Frequency[MHz]");
% ylabel("Detection");
 pause();
     
end


  
