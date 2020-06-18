function [Spect_Modified, AverageSpec] = SpecSub(Spect, NonSpeech)
%SPECSUB Spectrum Subtraction
    
    WindowLength=size(Spect,1);
    nframe=size(Spect,2);
    
    Spect_mag=abs(Spect);
    avr=mean(Spect_mag(:,1:NonSpeech)');
    H=ones(WindowLength,nframe)-(avr'*ones(1,nframe))./Spect_mag;
    Invd=find(H==-inf);
    H(Invd)=0;
    Hr=(H+abs(H))/2;

    Spect_Modified=Spect.*Hr;
    
    AverageSpec=avr';

end

