//FFT of a Sequence
clc ;
clear all;
close ;
x = input("Enter the sequence = ")
X = fft(x)
subplot(2,1,1)
plot(real(X),'r')
xtitle("Real Part")
subplot(2,1,2)
plot(imag(X),'b')
xtitle("Imag Part")
disp("The FFT is = ", X)
