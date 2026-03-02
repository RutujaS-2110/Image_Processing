% Yeshwantrao Chavan College of Engineering, Nagpur
% Department of Electronics and Telecommunication
% Name of course: Digital Signal Processing Lab
% Course Code:ET2352
% Name: Rutuja Saharkar
close all;
clc;
clear all;
%% Experiment No.5: 
% TO STUDY BUTTERWORTH LOWPASS, HIGHPASS, BANDPASS AND STOPBAND FILTERS.

%% Exercise No:01
% For data sampled at 1000 Hz, design a low pass butterworth filter with 
% less than 3 dB of ripple in the passband, defined from 0 to 40 Hz, and 
% at least 60 dB of attenuation in the stopband, defined from 150 Hz to 
% the Nyquist frequency (500 Hz).Plot magnitude and angle of low pass 
% butterworth filter:

Fs=1000;
Wp = 2*40/Fs; Ws = 2*150/Fs;
[N,Wc] = buttord(Wp,Ws,3,60);
fprintf('Order of Butterworth Lowpass Filter is N=%d\n ',N)
fprintf('Cut-off Frequency of Butterworth Lowpass Filter is Wc=%f\n ',Wc)
[b,a] = butter(N,Wc);
figure,
zplane(b,a)
title('Pole-Zero Plot of System function H(z)')
[H,f]=freqz(b,a,512,Fs);
figure,
subplot(2,1,1)
plot(f,abs(H))
title('Magnitude of LP Digital Butterworth Filter')
subplot(2,1,2)
plot(f,angle(H))
title('angle of LP Digital Butterworth Filter')
%% Exercise No:02
% For data sampled at 1000 Hz, design a high pass butterworth filter with 
% less than 3 dB of ripple in the passband, defined from 0 to 150 Hz, and 
% at least 60 dB of attenuation in the stopband, defined from 40 Hz to 
% the Nyquist frequency (500 Hz). Plot magnitude and angle of high pass 
% butterworth filter:
Fs=1000;
Wp = 2*150/Fs; Ws = 2*40/Fs;
[N,Wc] = buttord(Wp,Ws,3,60);
fprintf('Order of Butterworth Lowpass Filter is N=%d\n ',N)
fprintf('Cut-off Frequency of Butterworth Lowpass Filter is Wc=%f\n ',Wc)
[b,a] = butter(N,Wc,'high');
figure,
zplane(b,a)
title('Pole-Zero Plot of System function H(z)')
[H,f]=freqz(b,a,512,Fs);
figure,
subplot(2,1,1)
plot(f,abs(H))
title('Magnitude of HP Digital Butterworth Filter')
subplot(2,1,2)
plot(f,angle(H))
title('angle of HP Digital Butterworth Filter')
%% Exercise No:03
% Design a Bandpass Butterworth filter with passband frequency of 
% 60 Hz to 200 Hz with less than 3dB of ripple in the passband, defined 
% from 40dB attenuation  in the stopband that are 50Hz on both sides of the
% sideband f(s)=1000 Hz   
Fs=1000;
Wp1= 2*60/Fs;
Wp2= 2*200/Fs;
Wp=[Wp1 Wp2];
Ws1 = 2*50/Fs;
Ws2 = 2*250/Fs;
Ws=[Ws1 Ws2];
[N,Wc] = buttord(Wp,Ws,3,40);
fprintf('Order of Butterworth Lowpass Filter is N=%d\n ',N)
fprintf('Cut-off Frequency of Butterworth Lowpass Filter is Wc=%f\n ',Wc)
[b,a] = butter(N,Wc);
figure,
zplane(b,a)
title('Pole-Zero Plot of System function H(z)')
[H,f]=freqz(b,a,512,Fs);
figure,
subplot(2,1,1)
plot(f,abs(H))
title('Magnitude of HP Digital Bandpass Butterworth Filter')
subplot(2,1,2)
plot(f,angle(H))
title('angle of HP Digital Bandpass Butterworth Filter')
%% Exercise No:04
% Design digital Bandstop filter using BLT and Butterworth approximations 
% for the following specifications:
% lower passband egde=25Hz;upper passband edge=225Hz
% lower stopband egde=100Hz;upper stopband edge=150Hz
% stopband attenuation 18dB 
% passband attenuation 3dB 
Fs=1000;
Ws1 = 2*100/Fs;
Ws2 = 2*150/Fs;
Ws=[Ws1 Ws2];
Wp1= 2*25/Fs;
Wp2= 2*225/Fs;
Wp=[Wp1 Wp2];
[N,Wc] = buttord(Wp,Ws,3,18);
fprintf('Order of Butterworth Lowpass Filter is N=%d\n ',N)
fprintf('Cut-off Frequency of Butterworth Lowpass Filter is Wc=%f\n ',Wc)
[b,a] = butter(N,Wc,'stop');
figure,
zplane(b,a)
title('Pole-Zero Plot of System function H(z)')
[H,f]=freqz(b,a,512,Fs);
figure,
subplot(2,1,1)
plot(f,abs(H))
title('Magnitude of HP Digital Bandstop Butterworth Filter')
subplot(2,1,2)
plot(f,angle(H))
title('angle of HP Digital Bandstop Butterworth Filter')
%% Conclusion:
% The above experiment is helpful for studying the difference between
% various Butterworth filters like lowpass,highpass,bandpass and bandstop
% filters with suitable graphs for pole-zero plot and magnitude,phase
% plots. 