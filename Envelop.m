function Env = Envelop (x,LPF)


    N = 20; % Filter order
    B = firpm(N, [0.01 .95],[1 1],'hilbert');
    XHilbert = filter(B,1,x);
    %XHilbert = XHilbert/max(abs(XHilbert))*max(abs(x)); %normalizacion
    hdelay = dfilt.delay(N/2);
    x = filter(hdelay,x);
    Env = sqrt(x.^2+XHilbert.^2);
    Env = filter(LPF,Env);


end