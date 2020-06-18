function [Spect,ExtentionLength] = STFT(Signal,WindowType,WindowLength,OverlapFactor)

    ratio=(OverlapFactor-1)/OverlapFactor;
    framecomp=OverlapFactor-1;
    nframe=round(length(Signal)/WindowLength*OverlapFactor)+framecomp;
    rm=mod(length(Signal),WindowLength/OverlapFactor);

    if(WindowType==1)
        coswin=hamming(WindowLength);
    elseif(WindowType==2) 
        coswin=hann(WindowLength);
    end

    stft=zeros(WindowLength,nframe);
    SignalExt=[zeros(WindowLength*ratio,1);Signal;zeros(WindowLength*ratio+rm,1)];
    
    ExtentionLength=length(SignalExt);

    for i=1:nframe
        stft(:,i)=fft(SignalExt((i-1)*WindowLength/OverlapFactor+1:(i-1)*WindowLength/OverlapFactor+WindowLength).*coswin);
    end
    
    Spect=stft;
    
end

