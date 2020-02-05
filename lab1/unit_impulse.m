clear all
close all
clc
%unit impulse sequence

n1 = input('enter value of n1');
n2 = input('enter value of n2');
n0 = input('enter value of n0');

if(n0<=n2 && n0>=n1)
    y=zeros(1,numel(n1,n2));
    x = n1:n2
    %y=x==n0;%unit impulse
    y=x>=n0;%unit step
    subplot(2,2,4);
    stem(x,y);
    axis([n1 n2 -1 2]);
    xlabel('n')
    ylabel('impulse signal');
else
    display('no has to be in between n1 and n2')
end