function Spect_modified = RNR(Spect,NonSpeech)
%RNR Residual Noise Reduction
    
    WindowLength=size(Spect,1);
    nframe=size(Spect,2);
    
    Spect_mag=abs(Spect);
    MaxResidual=max(Spect_mag(:,1:NonSpeech),[],2);
    
    Spect_modified=Spect;
    SpectExt=[Spect(:,1),Spect,Spect(:,nframe)];
    
    for i=2:nframe+1
        check=SpectExt(:,i)<MaxResidual;
        for j=1:WindowLength
            if(check(j))
                Spect_modified(j,i-1)=min(SpectExt(j,i:i+1));
            end
        end    
    end

end

