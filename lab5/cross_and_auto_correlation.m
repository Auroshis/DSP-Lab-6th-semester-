%cross-corelation in-built
clc;
clear all;
close all;
x = input('enter sequence1');
y = input('enter sequence2');

subplot(4,1,1)
stem(x)
title('sequence1')

subplot(4,1,2)
stem(y)
title('sequence2')

[c,lags] = xcorr(x,y);
subplot(4,1,3)
stem(lags,c)
title('Cross corelation (in-built)')

%auto-corelation
[c1,lags1] = xcorr(x);
subplot(4,1,4)
stem(lags1,c1)
title('Auto-Corelation (in-built) of sequence1')