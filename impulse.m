function [x,n]= impulse(n0,n1,n2)

n= [n1:n2];
x=[(n-n0)== 0];
figure(1)
stem(n,x)
grid
title ('Unit Impulse in DT')
xlabel('<--Sample Number-->')
ylabel('Amplitude-->')

figure(2)
plot(n,x)
grid
title ('Unit Impulse in CT')
xlabel('<--Sample Number-->')
ylabel('Amplitude-->')