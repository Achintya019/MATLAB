clc
close all

x = input('Enter the first sequences');
h = input('Enter the second sequences');
N1 = length(x);
N2 = length(h);

x = [x, zeros(1,N2)];
h = [h, zeros(1,N1)];

N = max(N1,N2);
y  = zeros(1,N);

for i = 1: N1+ N2-1
    y(i) = 0;
    for j = 1:N1
        if(i-j + 1) > 0
        y(i) = y(i) + x(j).*h(i-j+1);
        end
    end
end

subplot(4,1,1)
stem(x);
title('First Input Sequence');
xlabel('Samples');
ylabel('Amplitude');
legend('Achintya,102115126')
subplot(4,1,2)
stem(h);
title('Second Input Sequence');
xlabel('Samples');
ylabel('Amplitude');
legend('Achintya,102115126')
subplot(4,1,3)
stem(y);
title('Linear Convolution Using Circular Conv');
xlabel('Samples');
ylabel('Amplitude');
legend('Achintya,102115126')


    
    