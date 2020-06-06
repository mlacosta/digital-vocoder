BUFFERSIZE = 512;
CANTDEBUFFER = 100;


for(i = 1:CANTDEBUFFER)
    dlmwrite(strcat(strcat('D:\Programacion\C++\Vocoder2\bufferAudio',num2str(i)),'.dat'),x(((i-1)*BUFFERSIZE+1):(BUFFERSIZE*i))','delimiter',',','precision',15);
    dlmwrite(strcat(strcat('D:\Programacion\C++\Vocoder2\bufferSynth',num2str(i)),'.dat'),C(((i-1)*BUFFERSIZE+1):(BUFFERSIZE*i))','delimiter',',','precision',15);
end



% for(i = 1:CANTDEBUFFER)
%     RR(((i-1)*BUFFERSIZE+1):(BUFFERSIZE*i)) = csvread(strcat(strcat('C:\Users\mla003\Documents\C Programming\Vocoder2\bufferAudio',num2str(i)),'.dat'));
% end




sprintf('Ejecutar Vocoder en C')
pause()


hold off
RR = csvread('D:\Programacion\C++\Vocoder2\resultadoVocoderMultiple.dat');
plot(RR,'r')
grid minor
soundsc(RR,48e3);
