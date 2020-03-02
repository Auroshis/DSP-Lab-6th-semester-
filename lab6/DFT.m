function [A]=FFT(x)
N=length(x);
A = zeros(N,1);
for k=1:N
    A(k)=0;
    for n=1:N
        A(k)=A(k)+x(n).*exp((-1j).*2.*pi.*(n-1).*(k-1)./N);
    end
end