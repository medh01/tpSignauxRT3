function spec = calculSpectreFFT(Fe,valSignal)
    Te = 1/Fe;
    N = length(valSignal);
    frequence = linspace(-2*Fe, 2*Fe, N);
    spectre = fft(valSignal);
    figure();
    plot(frequence, abs(spectre));
end    
