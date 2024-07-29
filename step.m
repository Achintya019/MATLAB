function [x,n]= step(n0,n1,n2)

n= [n1:n2];
x=[(n-n0)>= 0];
figure(1)
stem(n,x)
grid
title ('Unit Step in DT')
xlabel('<--Sample Number-->')
ylabel('Amplitude-->')
legend('Rupal Garg,102115129')
figure(2)
plot(n,x)
grid
title ('Unit Step in CT')
xlabel('<--Sample Number-->')
ylabel('Amplitude-->')