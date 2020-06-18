# Speech-Enhancement
Implementation of a spectral noise subtraction algorithm for the enhancement of noisy speech based on the shorted-term Fourier Transform (STFT).

Short Term Spectrum: 

<a href="https://www.codecogs.com/eqnedit.php?latex=X(f,&space;t)&space;=&space;\sum_{-\infty}^{&plus;\infty}w(t-\tau)x(t)e^{j2&space;\pi&space;f&space;\tau}&space;d\tau" target="_blank"><img src="https://latex.codecogs.com/gif.latex?X(f,&space;t)&space;=&space;\sum_{-\infty}^{&plus;\infty}w(t-\tau)x(t)e^{j2&space;\pi&space;f&space;\tau}&space;d\tau" title="X(f, t) = \sum_{-\infty}^{+\infty}w(t-\tau)x(t)e^{j2 \pi f \tau} d\tau" /></a>

Sampled Version (Analysis):

<a href="https://www.codecogs.com/eqnedit.php?latex=X_{mn}&space;=\sum_{k=0}^{T-1}&space;w(nD-k)x(k)&space;e^{j2&space;\pi&space;km/T}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?X_{mn}&space;=\sum_{k=0}^{T-1}&space;w(nD-k)x(k)&space;e^{j2&space;\pi&space;km/T}" title="X_{mn} =\sum_{k=0}^{T-1} w(nD-k)x(k) e^{j2 \pi km/T}" /></a>

Systhesis:

<a href="https://www.codecogs.com/eqnedit.php?latex=F^{-1}\{X_{nm}&space;\}=&space;\frac{1}{T}&space;\sum_{m=0}^{T-1}&space;X_{nm}e^{-j2&space;\pi&space;km/T}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?F^{-1}\{X_{nm}&space;\}=&space;\frac{1}{T}&space;\sum_{m=0}^{T-1}&space;X_{nm}e^{-j2&space;\pi&space;km/T}" title="F^{-1}\{X_{nm} \}= \frac{1}{T} \sum_{m=0}^{T-1} X_{nm}e^{-j2 \pi km/T}" /></a>,  
<a href="https://www.codecogs.com/eqnedit.php?latex=x(k)&space;=&space;\sum_{n&space;=&space;-&space;\infty}^{&plus;\infty}&space;F^{-1}\{Xnm\}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x(k)&space;=&space;\sum_{n&space;=&space;-&space;\infty}^{&plus;\infty}&space;F^{-1}\{Xnm\}" title="x(k) = \sum_{n = - \infty}^{+\infty} F^{-1}\{Xnm\}" /></a>

# References

[1] Allen, Jonathan. "Short term spectral analysis, synthesis, and modification by discrete Fourier transform." IEEE Transactions on Acoustics, Speech, and Signal Processing 25.3 (1977): 235-238.

[2] Boll, Steven. "Suppression of acoustic noise in speech using spectral subtraction." IEEE Transactions on acoustics, speech, and signal processing 27.2 (1979): 113-120.
