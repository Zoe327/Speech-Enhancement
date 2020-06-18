function Signal = ISTFT(Spect,ExtentionLength,OverlapFactor)
%ISTFT Inverse Short Term Fourier Transform
    L=size(Spect,1);
    nframe=size(Spect,2);
    
    Signal=zeros(ExtentionLength,1);
    for n=1:nframe
        Signal((n-1)*L/OverlapFactor+1:(n-1)*L/OverlapFactor+L)=Signal((n-1)*L/OverlapFactor+1:(n-1)*L/OverlapFactor+L)+ifft(Spect(:,n));
    end   

end

