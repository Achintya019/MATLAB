t=-5:0.001:5;
ut1= (t>=-1);
ut2= (t>=1);
rect= ut1-ut2;
plot(t,rect);
xlabel('Time(t)-->')
ylabel('Amplitude of rect(t)-->')
title('Rectangular Pulse Signal in CT domain');

figure
n=-5:1:5;
ut1= (n>=-1);
ut2= (n>=2);
rect= ut1-ut2;
stem(n,rect);
xlabel('Sample Number(n)-->')
ylabel('Amplitude of rect(t)-->')
title('Rectangular Pulse Signal in DT domain');
