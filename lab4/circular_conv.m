clc;
close all;
clear all;

x1 = input('enter sequence 1');
st1 = 0;% starting point is 0
%n1 = st1:st1+length(x1)-1


x2 = input('enter sequence 2');
st2 = 0;% starting point is 0
%n2 = st2:st2+length(x2)-1

%zero_padding to get same length
if length(x1)==length(x2) %do nothing if lengths equall
elseif length(x1)<length(x2)
        x1=[x1 zeros(1,length(x2)-length(x1))]%append zeros to x to equalize lengths
    else
        x2=[x2 zeros(1,length(x1)-length(x2))]%append zeros to y to equalize lengths
end
len = max(length(x1),length(x2))
x3 = cconv(x1,x2,length(x1))%you have to pass the length of either of the sequences else it will return linear convolution.
n3 = 0:0+len-1%x-axis value for plotting

subplot(3,1,1)
stem(n3,x1)
hold on;
title('sequence 1');
%axis([-15 15 -15 15])
hold off;

subplot(3,1,2)
stem(n3,x2)
hold on;
title('sequence 2');
%axis([-15 15 -15 15])
hold off;

subplot(3,1,3)
stem(n3,x3)
hold on;
title('Circularly convoluted sequence');
%axis([-15 15 -15 15])
hold off;