clc
clear all;
close all;

x = input('enter the sequence1')
subplot(3,1,1)
stem(x)
title('Input sequence')
N = length(x)
l = 0:1:N-1

y = FFT_user(x)
subplot(3,1,2)
stem(l,abs(y))
title('Without in-built function')

y1 = fft(x)
subplot(3,1,3)
stem(l,abs(y1))
title('With in-built function')
