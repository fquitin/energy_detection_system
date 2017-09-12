clc
clear all
close all


f1=1e6; %frequency sine wave 1
f2=100e3; %frequency sine wave 2

fc=100e3; %cut-off frequency
fs=10e6;
N=10000;
T=[0:1/(fs):N/fs];

y_1=sin(2*pi*f2*T).*exp(i*(2*pi*f1*T)); %sine wave 1

%y_2=sin(2*pi*f2*T); %sine wave 2
%y_3=cos(2*pi*f1*T)
%y=(y_1+y_2);
y=y_1;

M=1024;     %number of points
fo = fs/M;                           %frequency resolution
f= (-(M-1)/2:(M-1)/2)*fo ;                       %frequency points for plotting

Y = fft(y,M);      %fft of the sampled signal
Y_db = 20*log10(abs((fftshift(Y))));   %fft [db]
Y_2 = Y/2^11;

%% Discretizing samples for the testbench
nb=16;
y_q = floor(real(y)*2^(nb-1));
idy = find(y_q == 2^(nb-1));
y_q(idy) = 2^(nb-1)-1;

y_i = floor(imag(y)*2^(nb-1));
idy = find(y_i == 2^(nb-1));
y_i(idy) = 2^(nb-1)-1;

Y_q = floor(real(Y_2)*2^(nb-1));
idy = find(Y_q == 2^(nb-1));
Y_q(idy) = 2^(nb-1)-1;

Y_i = floor(imag(Y_2)*2^(nb-1));
idy = find(Y_i == 2^(nb-1));
Y_i(idy) = 2^(nb-1)-1;

Y_disc = Y_q + i* Y_i;

%% Save samples in txt file
fp = fopen('samples.txt','w');
for(j=1:1:10001)
    fprintf(fp,'%d,%d\n',y_q(1,j),y_i(1,j));
end
fclose(fp);

fp = fopen('results_matlab_q.txt','w');
fprintf(fp,'%d\n',real(Y));
fclose(fp);

fp = fopen('results_matlab_i.txt','w');
fprintf(fp,'%d\n',imag(Y));
fclose(fp);

%%Plot

figure(1)
plot(f/1e6,abs(fftshift(Y)),'r')
%hold on
%plot(f/1e6,abs(fftshift(Y_disc./2^(nb-1))),'b')


