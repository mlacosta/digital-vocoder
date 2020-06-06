BUFFERSIZE = 512;
CANTDEBUFFER = 100;
x = filter(BPF1,2*(rand(1,BUFFERSIZE*CANTDEBUFFER)-.5));

for(i = 1:CANTDEBUFFER)
    dlmwrite(strcat(strcat('C:\Users\mla003\Documents\C Programming\Vocoder2\bufferAudio',num2str(i)),'.dat'),x(((i-1)*BUFFERSIZE+1):(BUFFERSIZE*i))','delimiter',',','precision',15);
    dlmwrite(strcat(strcat('C:\Users\mla003\Documents\C Programming\Vocoder2\bufferSynth',num2str(i)),'.dat'),C(((i-1)*BUFFERSIZE+1):(BUFFERSIZE*i))','delimiter',',','precision',15);
end

% RR  = zeros(1,512*100);

% for(i = 1:CANTDEBUFFER)
%     RR(((i-1)*BUFFERSIZE+1):(BUFFERSIZE*i)) = csvread(strcat(strcat('C:\Users\mla003\Documents\C Programming\Vocoder2\bufferAudio',num2str(i)),'.dat'));
% end


sprintf('Ejecutar Envolvente Multiple en C')
pause()


hold off
RR = csvread('C:\Users\mla003\Documents\C Programming\Vocoder2\resultadoEnvolventeMultiple.dat');
plot(RR,'r')
hold on
plot(Envelop(x,LPF))
grid minor

