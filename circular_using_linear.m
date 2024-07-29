clc
clear all
x = input('Enter x --> ');
h = input('Enter h --> ');
% x = [1 2 0 1]
% h = [2 2 1 1]
yc = conv(x,h)
z = max(length(x),length(h));
y = yc(1:z)
for k = 1:length(yc)-z
    y(k) = y(k)+yc(k+z)
end
y
subplot(4,1,1)
stem(x,'r','linewidth',1);
title('First Sequence')
xlabel('<--- n --->');
ylabel('x[n] --->');
legend('Achintya,102115126')
grid on;

subplot(4,1,2)
stem(h,'r','linewidth',1);
title('Second Sequence')
xlabel('<--- n --->');
ylabel('h[n] --->');
legend('Achintya,102115126')
grid on;

subplot(4,1,3)
stem(y,'r','linewidth',1);
title('Circular Convolution using Linear Convolution')
xlabel('<--- n --->');
ylabel('y[n] --->');
legend('Achintya,102115126')
grid on;
