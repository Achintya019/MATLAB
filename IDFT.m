XK =[6, -1-1i, -1i, -1+1i];
N = length(XK);
XZ = zeros(1, N);
for k = 1:N
    for n = 1:N
        XZ(n) = XZ(n) + (1/N)*XK(k)* exp((1 * 1i*2*pi*(k-1)*(n-1))/N);
    end
end
figure 
subplot(2, 1, 1)
stem(abs(XZ/N))
title('Magnitude of idft')
legend("Achintya,102115126")
subplot(2, 1, 2)
stem(angle(XZ/N))
title('Phase of idft')
legend("Achintya,102115126")