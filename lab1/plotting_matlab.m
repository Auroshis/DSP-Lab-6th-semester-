% A Simple MATLAB Script to create
% Plots of discrete and continuous 
% signals

%continuous
t = linspace(0,1,10000);
sig = sin(20*pi*t);
subplot(2,1,1);
plot(t,sig)
xlabel('t --->');
ylabel('A --->');
title('Continuous-time signal')

%discrete
T = linspace(0,1,100);
sig_disc = sin(10*pi*T);
subplot(2,1,2);
stem(T,sig_disc)
xlabel('t --->');
ylabel('A --->');
title('Discrete-time signal')