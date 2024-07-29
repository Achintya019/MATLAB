
x=input('Enter x values:');
h=input('Enter h values:');
if(length(x)<length(h))
    len=length(h);
else
    len=length(x);
end
y=zeros(1,len);
x=[x, zeros(1,len-length(x))];
h=[h, zeros(1,len-length(h))];

for n=1:len
    for i=1:len
        y(n)=y(n)+x(i)*h(mod((n-i),len)+1);
    end
end

disp(y)
stem(1:len,y)
title('Circular Convulation');
xlabel('Samples');
ylabel('Amplitude');
legend('Achintya,102115126')
subplot(2,2,1)
stem(1:len,h)
title('First Input Sequence');
xlabel('Samples');
ylabel('Amplitude');
legend('Achintya,102115126')
subplot(2,2,2)
stem(1:len,x)
title('Second Input Sequence');
xlabel('Samples');
ylabel('Amplitude');
legend('Achintya,102115126')
subplot(2,2,[3,4])
