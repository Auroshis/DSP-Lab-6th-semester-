clc
close all
clear all
x = input('enter input sequence1');
h = input('enter input sequence2');

y= input('enter the starting point of sequence1');
u=input('enter the starting point of sequence2');

y1 = conv(x,h);

[p q] = size(x);
[o i] = size(h);
[f w] = size(y1);%could have used numel or length
%ok
start1 = y;
end1=y+q-1;
start2 = u;
end2=u+i-1;
start3 = y+u;
end3=start3+w-1;


n1 = start1:end1
n2 = start2:end2
n3 = start3:end3
subplot(3,1,1);
stem(n1,x);
title('sequence1');

subplot(3,1,2);
stem(n2,h);
title('sequence2');

subplot(3,1,3);
stem(n3,y1);
title('convoluted signal');