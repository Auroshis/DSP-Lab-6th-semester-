clc;
clear all;
close all;
E = 0;
x1 = input('Enter the sequence');
for i = 1:length(x1)
    E = E + abs(x1(i))^2;
end
p = E/length(x1)
total_energy = E

