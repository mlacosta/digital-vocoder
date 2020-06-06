hold off
% clear all
clc
load('BancoDeFiltros.mat')
freq = 200;
f = [BPF1 BPF2 BPF3 BPF4 BPF5 BPF6 BPF7 BPF8 BPF9 BPF10 BPF11 BPF12 BPF13 BPF14 BPF15 BPF16 BPF17 BPF18 BPF19 BPF20 BPF21 BPF22 BPF23 ];
%  x = stmon(wavread('Acapella.wav'));
x = wavread('voice.wav');
% C = stmon(wavread('CARRIER.wav'));

N = length(x);
C = dds(N,freq)';
C = C(1:N); %para que tengan la misma longitud
x=x(1:N);
mod = zeros(N,1);
y = zeros(N,1);

tic
for(i = 1:23)
    mod = Envelop(filter(f(i),x),LPF2);
    car = filter(f(i),C)*10;
    y = y + mod.*car;
end
toc

soundsc(y,48000)
plot(x)
hold on
plot(y,'g')
