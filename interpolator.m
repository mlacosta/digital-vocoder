clc
clear all;
close all;
load('LPF_WT.mat');
%wavetable 1-----------------------------------
load('wavetable1.mat');
% figure(1)
% plot(C);
%interpolar por factor 512
C = interp(C,512);
% figure(2)
% plot(C);
%decimar por factor 73
C= downsample(C,73)

plot(C);
figure();
plot([0:2047],20*log(abs(fft(C))))
xlim([0,1024])
grid minor
% C = [C C C]
% C = filter(LPF_WT,C);
% C = C(2384:4431);
% figure();
% plot(C)
figure();
plot([0:2047],20*log(abs(fft(C))))
xlim([0,1024])
save('wavetable_ready_1.mat','C')
%wavetable 1-----------------------------------