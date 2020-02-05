clc;
clear all;
close all;
x = input('enter the sequence');
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
x1 = fliplr(x);%flipped the sequence
n1 = fliplr(n);%flipped the time span
n1 = -1.*n1; %negated the time span to get folding effect
subplot(2,1,2);
stem(n1,x1);
hold on;
xlim([-10 10]);
ylim([-10 10]);
title('Time reversed signal');
hold off;


