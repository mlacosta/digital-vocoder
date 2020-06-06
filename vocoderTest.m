BUFFERSIZE = 70000;
dlmwrite('C:\Users\mla003\Documents\C Programming\Vocoder2\bufferAudio.dat',x(1:BUFFERSIZE)','delimiter',',','precision',15);
dlmwrite('C:\Users\mla003\Documents\C Programming\Vocoder2\bufferSynth.dat',C(1:BUFFERSIZE)','delimiter',',','precision',15);

sprintf('Ejecutar Vocoder en C')
pause()


hold off
RR = csvread('C:\Users\mla003\Documents\C Programming\Vocoder2\resultadoVocoder.dat');
plot(RR,'r')
grid minor
soundsc(RR,48e3);
