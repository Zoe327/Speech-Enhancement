function Spect_modified = ASA(Spect,AverageSpec,Threshold,Attenuation)
%ASA Additional Signal Attenuation during non-speech activity

    WindowLength=size(Spect,1);
    nframe=size(Spect,2);
    Spect_modified=Spect;
    
    test=abs(Spect)./repmat(AverageSpec,1,nframe);
    SpecSum=sum(test)/WindowLength;    
    check=find(20*log10(SpecSum)<Threshold);
    Spect_modified(:,check)=Spect(:,check)/(10^(Attenuation/20));

end

