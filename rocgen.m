clear all
clc
N = 1024;
x = sawtooth(2*pi*[0:4/N:(4-1/N)]);
figure(1)
stem(x);
figure(2)
stem(abs(fft(x)));
N = length(x)
M = 36;
L = (N - 1)*(M - 1)
xx = zeros (1,L);

for i=1:L
    if(i == 1)||(mod((i-1),M)==0)
        xx(i) = x((i-1)/M + 1);
    else
        xx(i) = xx(i-1);
    end
end

figure(3)
stem(xx)
figure(4)
stem([0:(L-1)],abs(fft(xx)));