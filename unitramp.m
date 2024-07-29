
t= -1:0.01:1;
for i=1: length(t)
    if (t(1,i)>=0)
        u(1,i)=t(1,i).*1;
    else
        u(1,i)=0;
    end
end
plot(t,u)
grid
title ('Unit Ramp in CT')
xlabel('<--Time(t.sec)-->')
ylabel('<--R-->')