clc
clear all
x = input('Enter x --> ');
h = input('Enter h --> ');
% x = [1 2 0 1]
% h = [2 2 1 1]
X = fft(x)
Y = fft(h)
z = X .* Y;

ifft(z)

subplot(3,1,1)
stem(x,'r','linewidth',1);
title('First Sequence')
xlabel('<--- n --->');
ylabel('x[n] --->');
legend('Achintya,102115126')
grid on;

subplot(3,1,2)
stem(h,'r','linewidth',1);
title('Second Sequence')
xlabel('<--- n --->');
ylabel('h[n] --->');
legend('Achintya,102115126')
grid on;

subplot(3,1,3)
stem(ifft(z),'r','linewidth',1);
title('Circular Convolution using DFT - IDFT Method')
xlabel('<--- n --->');
ylabel('y[n] --->');
legend('Achintya,102115126')
grid on;