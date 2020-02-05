% A Simple MATLAB Script for finding the scaled 
% and inverse transposed version of a given Matrix.

A = randi(6,3)

scale = input('Input scale factor: ');
scale_A = scale*A

trans_A = A'

inv_A = inv(A)