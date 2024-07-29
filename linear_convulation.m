a=input('enter the sequence 1:');
b=input('enter the sequence 2:');
a1=length(a);
a2=length(b);
x=[a, zeros(1,a2)];
y=[b, zeros(1,a1)];
for i=1:(a1+a2-1)
    z(i)=0;
    for i1=1:a1
        if (i-i1+1)>0
            z(i)=z(i)+x(i1)*y(i-i1+1);
        end
    end
end
z

h= conv(a,b);
legend("Achintya,102115126")
stem(h)
