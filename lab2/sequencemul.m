clc;
clear all;
close all;
x1 = input('enter the sequence1');
x2 = input('enter the sequence2');
st1 = input('enter starting point for seq1');
st2 = input('enter starting point for seq2');

num1 = st1 + length(x1)-1;
n1 = linspace(st1,num1,length(x1))
subplot(3,1,1);
stem(n1,x1);
title('sequence1');
hold on;
xlim([-20,20]);
ylim([-20 20]);
hold off;

num2 = st2 + length(x2)-1;
n2 = linspace(st2,num2,length(x2))
subplot(3,1,2);
stem(n2,x2);
title('sequence2');
hold on;
xlim([-20,20]);
ylim([-20 20]);
hold off;

n = min(min(n1),min(n2)):max(max(n1),max(n2));
y1 = zeros(1,length(n));
y2 = y1;
y1(find((n>=min(n1)) & (n<= max(n1)))) = x1;
y2(find((n>=min(n2)) & (n<= max(n2)))) = x2;
y = y1 .* y2;
subplot(3,1,3);
stem(n,y);
title('multiplied sequence');
hold on;
xlim([-20 20]);
ylim([-20 20]);
hold off;