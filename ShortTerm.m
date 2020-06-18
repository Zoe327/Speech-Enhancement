clear all;

%  ---------------  Parameters Definition  ------------------

Ws=2;            % window selection , 1-Hamming 2-Hanning 
WL=256;         % window length
factor=2;        % factor = (window length) / Overlap
Thres=-20;
Attenuation=30;
SNR=50;          % SNR of White Gaussian Noise
NonSpeech=60;   % number of first frames not containing speech 

%  ---------------        Audio Read       -------------------

[data,fs]=audioread('Test05.wav');
data_awgn=awgn(data,SNR);    % Add White Gaussian Noise with certain SNR

%  ---------------            DSP          -------------------

[spect,ExtL]=STFT(data_awgn,Ws,WL,factor);

[spect_modified1,avr]=SpecSub(spect,NonSpeech);
%[spect_modified1,avr]=SpecSub(spect_modified1,NonSpeech);

spect_modified2=RNR(spect_modified1,NonSpeech);

spect_modified3=ASA(spect_modified2,avr,Thres,Attenuation);

%spect_modified2=SpecSub(spect_modified1,NonSpeech);

data1 = ISTFT(spect_modified1,ExtL,factor);
data1=data1(WL*(factor-1)/factor+1:WL*(factor-1)/factor+length(data));
data2 = ISTFT(spect_modified2,ExtL,factor);
data2=data2(WL*(factor-1)/factor+1:WL*(factor-1)/factor+length(data));
data3 = ISTFT(spect_modified3,ExtL,factor);
data3=data3(WL*(factor-1)/factor+1:WL*(factor-1)/factor+length(data));

%  ---------------          Data Save        -------------------

subplot(5,1,1);
plot(data);
subplot(5,1,2);
plot(data_awgn);
subplot(5,1,3);
plot(data1);
subplot(5,1,4);
plot(data2);
subplot(5,1,5);
plot(data3);

audiowrite('WithNoise.wav',data_awgn,fs);
audiowrite('SS.wav',data1,fs);
audiowrite('SS+RNR.wav',data2,fs);
audiowrite('SS+RNR+ASA.wav',data3,fs);










