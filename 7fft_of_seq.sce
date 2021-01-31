//FFT of a Sequence
clc;
clear all;
close;
x = input("Enter the sequence = ")
X = fft(x)
plot(X)
disp("The FFT is = ", X)
