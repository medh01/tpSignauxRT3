function xt = calculSignal(Fe,T) 
    A1 = 1;
    A2 = 1;
    f1 = 50;
    f2 = 120;
    Te = 1/Fe;
    temps = 0:Te:T;
    val = [];
    for t = temps
        xt = A1*sin(2*pi*f1*t) + A2*sin(2*pi*f2*t);
        val = [val, xt];
    end
    xt = val;
    figure();
    plot(temps,val);
end    
