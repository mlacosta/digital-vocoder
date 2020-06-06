function signal = dds(k,freq)
    % clc
    % clear all
    load('wavetable_ready_1.mat');
    M = round(2^32*freq/48000);
    N = length(C);
    x = C;
    PIR =  0;
    signal = zeros(1,k);
    b = zeros(1,32);
    dirb = zeros(1,11);
    for i=1:k

        b = de2bi(PIR,32);

        dirb = b((33-log2(N)):32);

        dir = bi2de(dirb);
        if dir>(N-1)
            dir = dir - N;
        end
        PIR = PIR + M;
        if PIR>=2^32
           PIR = PIR - 2^32;
        end 

        signal(i) = x(dir+1);
    end

    % subplot(2,1,1)
    % plot(x)
    % xlim([0,N]);
    % subplot(2,1,2)
    % plot(signal)
% xlim([0,N]);
end