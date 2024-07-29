t= -20:0.001:20;
y = sin(pi.*t)./(pi.*t);
plot(t,y);
title ('Sinc in CT domain')
xlabel('<--Time(t.sec)-->')
ylabel('<--Amplitude of Sinc-->')