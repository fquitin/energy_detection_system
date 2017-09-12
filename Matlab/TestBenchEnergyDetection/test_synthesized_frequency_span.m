clc
close all
clear all
addpath('../matlab_utils-master')

%% Initial Parameters
Fs=10e6;      %Sampling
Fc=400e6;     %Center Frequency

%% Read from binary file to complex

filename1='../Samples/ED_image/WBX/Frequency_span/span_7/received_data_sweep0'
filename2='../Samples/ED_image/WBX/Frequency_span/span_7/received_data_sweep1'
filename3='../Samples/ED_image/WBX/Frequency_span/span_7/received_data_sweep2'

[S_usrp1 D_usrp1]=read_ed_type(filename1); % signal read from the file
[S_usrp2 D_usrp2]=read_ed_type(filename2); % signal read from the file
[S_usrp3 D_usrp3]=read_ed_type(filename3); % signal read from the file


%% Frequency Domain Analysis
N=1024     %number of points
fo = Fs/N;                           %frequency resolution
f=(0:N-1)*fo + (Fc-Fs/2);%frequency points for plotting

for i=1:1:5
Y_1=(fftshift(S_usrp1(1,(i*N)+1:((i*N)+N))));
Y_2=(fftshift(S_usrp2(1,(i*N)+1:((i*N)+N))));
Y_3=(fftshift(S_usrp3(1,(i*N)+1:((i*N)+N))));

Y_1 = flip(Y_1);
Y_2 = flip(Y_2);
Y_3 = flip(Y_3);

D_1 =(flip(fftshift(D_usrp1(1,(i*N)+1:((i*N)+N)))));
D_2 =(flip(fftshift(D_usrp2(1,(i*N)+1:((i*N)+N)))));
D_3 =(flip(fftshift(D_usrp3(1,(i*N)+1:((i*N)+N)))));

y_max = max([Y_1 Y_2 Y_3]);

figure(1);
set(gcf, 'Position', get(0,'Screensize')); % Maximize figure. 
subplot(2,3,1)
plot(f/1e6,Y_1,'-b');
xlabel("Frequency[MHz]");
ylabel("Amplitude Linear");
ylim([0 y_max+1000]);


subplot(2,3,2)
plot((f+10e6)./1e6,Y_2,'-b');
xlabel("Frequency[MHz]");
ylabel("Amplitude Linear");
ylim([0 y_max+1000]);

subplot(2,3,3)
plot((f+20e6)/1e6,Y_3,'-b');
xlabel("Frequency[MHz]");
ylabel("Amplitude Linear");
ylim([0 y_max+1000]);

subplot(2,3,4)
plot(f/1e6,D_1,'-b');
xlabel("Frequency[MHz]");
ylabel("Detection");
ylim([-0.1 1.1]);

subplot(2,3,5)
plot((f+10e6)./1e6,D_2,'-b');
xlabel("Frequency[MHz]");
ylabel("Detection");
ylim([-0.1 1.1]);

subplot(2,3,6)
plot((f/1e6+20),D_3,'-b');
xlabel("Frequency[MHz]");
ylabel("Detection");
ylim([-0.1 1.1]);

pause()

end



