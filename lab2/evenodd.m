clc
clear all;
close all;
x = [1,2,3,4,3,2,1];%you can give user input of the sequence as well
n= -3:-3+numel(x)-1;%you can give user input
%original
subplot(3,1,1)
stem(n,x)
title('original sequence');
xflip = fliplr(x);
%even
xe = (x + xflip)/2;
subplot(3,1,2)
stem(n,xe)
title('even sequence');
%odd
xo = (x - xflip)/2;
subplot(3,1,3)
stem(n,xo)
title('odd sequence');