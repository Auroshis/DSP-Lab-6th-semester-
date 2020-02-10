clc;
clear all;
close all;

x = input('enter the sequence');
s = input('enter the scaling factor');
y = input('enter the starting point');%give input >=1
if y<1
    display('Please enter starting point >=1')
else
    q = length(x);
    n = y:y+q-1;
    subplot(2,1,1);
    stem(n,x);
    hold on;
    xlim([-10 10]);
    ylim([-10 10]);
    title('Original signal');
    hold off;
    %timescaling
    %r=0
    time_scaled_sequence = zeros(1,length(x))
    for i=y:n
        if mod(i,s)==0
            time_scaled_sequence(1,i) = x(1,i)
        end
    end

    subplot(2,1,2);
    stem(n,time_scaled_sequence);
    hold on;
    xlim([-10 10]);
    ylim([-10 10]);
    title('Timescaled signal');
    hold off;
end