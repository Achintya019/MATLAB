n=-20:1:20;
un= (n>=0); % u(n) unit step
und = (n>=10)    % u(n-10) delayed unit stepsignal
xn = un - und;     % x(n)= u(n)-u(n-10)
xnf= fliplr(xn);   % x(-n)
xen =(xn+xnf)/2;
xon=(xn-xnf)/2;
stem(n,xen);
grid
title ('Even Part')
xlabel('<--Time(n)-->')
ylabel('<--Amplitude-->')
legend('Rupal Garg,102115129')

figure
stem(n,xon);
grid
title ('Odd Part')
xlabel('<--Time(n)-->')
ylabel('<--Amplitude-->')
