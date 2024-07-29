t=-20:1:20;
rtd = (t>=1).*(t-1);
plot(t,rtd);
title ('Delayed Ramp Signal in CT')
xlabel('<--Time(t.sec)-->')
ylabel('<--Amplitude of r(t-1)-->')
legend('Samarth,102115087')