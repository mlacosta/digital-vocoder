BUFFERSIZE = 512;
CANTDEBUFFER = 100;
ruido = (rand(1,BUFFERSIZE*CANTDEBUFFER)-.5)*2;
m = 11 ;%filtro

for(i = 1:CANTDEBUFFER)
    dlmwrite(strcat(strcat('C:\Users\mla003\Documents\C Programming\Vocoder2\buffer',num2str(i)),'.dat'),ruido(((i-1)*BUFFERSIZE+1):(BUFFERSIZE*i)),'delimiter',',','precision',15);
end

pause()
hold off


RR = csvread('C:\Users\mla003\Documents\C Programming\Vocoder2\resultadoBuffer.dat');
plot(RR) 
hold on
plot(filter(bb(m),ruido),'r')
grid minor