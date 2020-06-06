
BUFFERSIZE = 10000;
ruido = (rand(1,BUFFERSIZE)-.5)*2;
dlmwrite('C:\Users\mla003\Documents\C Programming\Vocoder2\buffer.dat',ruido,'delimiter',',','precision',15);
bb = [BPF1 BPF2 BPF3 BPF4 BPF5 BPF6 BPF7 BPF8 BPF9 BPF10 BPF11 BPF12 BPF13 BPF14 BPF15 BPF16 BPF17 BPF18 BPF19 BPF20 BPF21 BPF22 BPF23];
sprintf('Ejecutar Filtros en C')
pause()

for(i = 1:23)
    hold off
    figure(1)
    title(num2str(i));

    RR = csvread(strcat(strcat('C:\Users\mla003\Documents\C Programming\Vocoder2\Resultado',num2str(i)),'.dat'));
    plot(RR) 
    hold on
    plot(filter(bb(i),ruido),'r')
    xlim([0,BUFFERSIZE])
    grid minor
    pause()
end