function [Y]=right_shift_circular(A,len_A,shift)
Y=zeros(1,len_A);
Y(shift+1:end)=[A(1:len_A-shift)];
Y(1:shift)=[A(1+len_A-shift:end)];