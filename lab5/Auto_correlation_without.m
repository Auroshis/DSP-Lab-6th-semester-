clc;
clear all;
close all;
x = input('Enter sequence1')
y = input('Enter sequence2')
stx = input('Enter starting point of sequence1')

nx = stx:stx+length(x)-1

subplot(4,1,1)
stem(nx,x)
title('sequence 1') 

%folding
x1 = fliplr(x);%flipped the sequence
n1 = fliplr(nx);%flipped the time span
n1 = -1.*n1; %negated the time span to get folding effect

%linear_convolution
conv_start = stx + sty;
conv_last = length(x)+length(x1)-1;
conv_n = conv_start:conv_start+conv_last-1;

conv_mat = zeros(length(x),length(x1));

for i=1:length(x)
    for j=1:length(x1)
        conv_mat(i,j) = x(i)*x1(j)%creating convolution matrix
    end
end

conv_sequence = zeros(1,conv_last)

for k=2:(conv_last+1)
    temp_sum = 0
    for i = 1:length(x)
        for j = 1:length(x1)
            if i+j == k
                temp_sum = temp_sum + conv_mat(i,j)%logic-only sum those elements whose sum of indices/location is equal to a value which is constant throughout the given diagonal.
            end
        end
    end
    conv_sequence(k-1) = temp_sum
end

subplot(4,1,3)
stem(conv_n, conv_sequence)
hold on
title('Auto-Correlation')
 hold off