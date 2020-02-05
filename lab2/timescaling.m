clc;
clear all;
close all;
x = input('enter the sequence');
s = input('enter the scaling factor');
y = input('enter the starting point');
[p q] = size(x);
n = y:y+q-1;
subplot(2,1,1);
stem(n,x);
hold on;
xlim([-10 10]);
ylim([-10 10]);
title('Original signal');
hold off;
%timescaling
subplot(2,1,2);
stem(s.*n,x);
hold on;
xlim([-10 10]);
ylim([-10 10]);
title('Timescaled signal');
hold off;


