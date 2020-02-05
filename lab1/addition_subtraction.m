% Simple MATLAB Script for the addition and subtraction of two Matrices A and B
clc
clear
close all
A = magic(3)
B = randi(9,3)

add_res = A + B
sub_res = A - B
mul_res = A * B

%row_appended_matrix = [A;B]
%column_appended_matrix = [A;B]
row_del = input('enter the row you want to delete')
mul_res(row_del,:) = []
col_del = input('enter the coumn you want to delete')
mul_res(:,col_del) = []
