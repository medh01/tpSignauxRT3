function spec = calculSpectre(Fe,valSignal)
    Te = 1/Fe;
    N = 10000;
    frequence = linspace(-2*Fe, 2*Fe, N);
    spectre = [];
    for v = frequence
           xv = 0;
          for i = 1:length(valSignal)
            xv = xv + valSignal(i)*exp(-1i*2*pi*i*v*Te);
          end  
          spectre = [spectre, xv];
    end
    figure();
    plot(frequence, abs(spectre));
end    
