function [u] = ramp(n1,n2)
t= n1:1:n2;
for i=1: length(t)
    if (t(1,i)>=0)
        u(1,i)=t(1,i).*1;
    else
        u(1,i)=0;
    end
end
stem(t,u)
grid
title ('Ramp in DT')
xlabel('<--Sample Number(n)-->')
ylabel('<--Amplitude-->')
figure 
plot(t,u)
grid
title ('Ramp in CT')
xlabel('<--Time(t.sec)-->')
ylabel('<--Amplitude-->')