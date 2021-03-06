function [y]=cir_convfunc(x,h)

st1=0;
st2=0;

num1 = st1 + length(x)-1;
n1 = linspace(st1,num1,length(x))
subplot(4,1,1);
stem(n1,x);
title('sequence 1')

num2 = st2 + length(h)-1;
n2 = linspace(st2,num2,length(h));
subplot(4,1,2);
stem(n2,h);
title('sequence 2')

l1=length(x);
l2=length(h);
N= l1+l2-1;%for circular conv take maximum length of both the sequences
x=[x zeros(1,N-l1)];
h=[h zeros(1,N-l2)];
y=zeros(1,N);
for n= 1:N
    for m=1:N
        j=mod(n-m,N)
        j=j+1
        y(n)=y(n)+x(m)*h(j)
    end
    
end
num3 = num1 + num2;
a= st1+st2;
n3=length(x)
subplot(4,1,3);
t3=0:n3-1;
stem(t3,y);
title('Linear convolution using circular convolution')

f_len = length(x)+length(h)-1
n_len = 0:0+f_len-1
subplot(4,1,4)
stem(n_len,conv(x,h))
xlim([0 5])
ylim([0 20])
title('Linear convolution using conv function')