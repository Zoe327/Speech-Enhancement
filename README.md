# Speech-Enhancement
Implementation of a spectral noise subtraction algorithm for the enhancement of noisy speech based on the shorted-term Fourier Transform (STFT).

Short Term Spectrum: $X(f, t) = \sum_{-\infty}^{+\infty}w(t-\tau)x(t)e^{j2 \pi \tau} d\tau$

Sampled Version: $X_{mn} =\sum_{k=0}^{T-1} w(nD-k)x(k) e^{j2 \pi km/T}$

Systhesis: $F^{-1}{X_{nm} = 1/T \sum_{k=0}^{T-1} X_{nm}e^{j2 \pi km/T}$ , 
$x(k) = \sum_{n = - \ infty}^{+\infty} F^{-1}\{Xnm\}$

# References

[1] Allen, Jonathan. "Short term spectral analysis, synthesis, and modification by discrete Fourier transform." IEEE Transactions on Acoustics, Speech, and Signal Processing 25.3 (1977): 235-238.

[2] Boll, Steven. "Suppression of acoustic noise in speech using spectral subtraction." IEEE Transactions on acoustics, speech, and signal processing 27.2 (1979): 113-120.
