clc
clear all
x1 = input("Enter the sequence x(n) : ");
x2 = input("Enter the sequence h(n) : ");
n1 = length(x1);
n2 = length(x2);
subplot(2,2,1)
stem(x1)
xlabel('n values -->')
ylabel('Amplitude')
title('x1')
legend("102115126,Achintya ")
subplot(2,2,2)
stem(x2)
xlabel('n values -->')
ylabel('Amplitude')
title('x2')
N = n1+n2-1;
%x1 = zeros(1,N-n1);
%x2 = zeros(1,N-n2);
Nmax = max(n1,n2);
y = conv(x1,x2);
disp(y)
y1 = y(1:Nmax);
y2 = [y(Nmax+1:N), zeros(1,N-Nmax)];
disp(y1);
disp(y2);
for i = 1:Nmax
    C(i) = y1(i) + y2(i);
end
disp(C);
subplot(2,2,3)
stem(C)
legend("102115126,Achintya ")
xlabel("n values -->")
title('Circular conv using Linear conv')