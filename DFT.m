XN =[1, 2, 2, 1];
N = length(XN);
XZ = zeros(1, N);
for k = 1:N
    for n = 1:N
        XZ(k) = XZ(k) + XN(n)* exp(-(1 * 1i*2*pi*(k-1)*(n-1))/N);
    end
end
figure 
subplot(2, 1, 1)
stem(abs(XZ/N))
title('Magnitude of dft')
legend("Achintya,102115126")
subplot(2, 1, 2)
stem(angle(XZ/N))
title('Phase of dft')
legend("Achintya,102115126")