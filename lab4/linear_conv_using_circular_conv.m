%circular convolution of two different length signals by matrix method without using 'conv()' 
clc; close all; clear all;
x=input('enter input sequence 1')
y=input('enter input sequence 2')
if length(x)==length(y) %do nothing if lengths equall
elseif length(x)<length(y)
        x=[x zeros(1,length(y)-length(x))]%append zeros to x to equalize lengths
    else
        y=[y zeros(1,length(x)-length(y))]%append zeros to y to equalize lengths
end
shift=0;
lin_conv=[zeros(1,length(x))];
for i=1:length(y)
    shiftedd=right_shift_circular(x,length(x),shift); %find the function code attached
    lin_conv=lin_conv + y(i).*shiftedd
    shift=shift+1;
end

n = 0:0+length(x)+length(y)-2

subplot(4,1,1)
stem(0:length(x)-1,x)
hold on;
title('sequence 1');
%axis([-15 15 -15 15])
hold off;

subplot(4,1,2)
stem(0:length(y)-1,y)
hold on;
title('sequence 2');
%axis([-15 15 -15 15])
hold off;

subplot(4,1,3)
stem(n,lin_conv)
hold on;
title('linear convoluted sequence using circular convolution');
%axis([-15 15 -15 15])
hold off;

z = cconv(x,y)
subplot(4,1,4)
stem(n,z)
hold on;
title('Linear convolution with cconv');
hold off;