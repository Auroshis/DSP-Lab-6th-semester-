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
title('without scaling');
subplot(2,1,2);
stem(n,s.*x);
title('after scaling');

