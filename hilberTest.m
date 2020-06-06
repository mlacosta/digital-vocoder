BUFFERSIZE = 50000;
ruido = (rand(1,BUFFERSIZE)-.5)*2;
% ruido = x(1:50000)';
ruido = filter(BPF15,ruido);

% ruido = zeros(1,BUFFERSIZE);
% ruido(1) = 1;
% ruido = sawtooth(2*pi*[0:32/BUFFERSIZE:32])/5 ;
dlmwrite('C:\Users\mla003\Documents\C Programming\Vocoder2\buffer.dat',ruido,'delimiter',',','precision',15);
sprintf('Ejecutar Envolvente en C')
pause()

    N = 20; % Filter order
    B = firpm(N, [0.01 .95],[1 1],'hilbert');
    
 hold off
RR = csvread('C:\Users\mla003\Documents\C Programming\Vocoder2\envolvente.dat');
 plot(RR,'r')
hold on
plot(Envelop(ruido,LPF2))
xlim([0,BUFFERSIZE])
grid minor

