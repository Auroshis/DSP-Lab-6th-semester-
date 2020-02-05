clc
clear all
close all
x=[4,6,7,-1,2,5,3,2,0,1];%2 is origin
n0=input('enter the value of n0:');
n1=input('enter the value of n1:');
m=-4;
n=m:(numel(x)+m-1);
subplot(5,1,1);
stem(n,x);
xlim([-20 20]);
ylim([-20 20]);
title('original sequence')
xlim([-20 20]);
m1=-3.*n;
subplot(5,1,2);
stem(m1+3,x);
xlim([-20 20]);
ylim([-20 20]);
title('x[(-3*n)+3]');
m2=-1*n0.*n;
subplot(5,1,3);
stem(m2-3,x);
xlim([-20 20]);
ylim([-20 20]);
title('x[(2*n0*(-1)*n)-3]');
subplot(5,1,4);
stem((n0*n)-n1,x);
xlim([-20 20]);
ylim([-20 20]);           
title('x((-n0*n)-n1)');
subplot(5,1,5);
stem((n1*n)-n0,x);
xlim([-20 20]);
ylim([-20 20]);
title('x((-n1*n)-n0)');