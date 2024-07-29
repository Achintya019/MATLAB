n = -2:2;                     % Define time axis

x = (n >= -6) & (n <= 6);     % Define rectangular pulse signal

subplot(2, 1, 1);               % Plot rectangular pulse signal
stem(n, x, 'LineWidth',1);
xlabel('Time (n)');
ylabel('Amplitude');
title('Rectangular Pulse Signal');
legend('102165022,Abhinandan');

w = -pi:0.1:pi;                % Calculate DTFT using numerical summation
X = zeros(size(w));
for i = 1:length(w)
    X(i) = sum(x .* exp(-1i*w(i)*n));
end

subplot(2, 1, 2);               % Plot magnitude of DTFT
stem(w, abs(X), 'LineWidth',1);
xlabel('Frequency');
ylabel('Magnitude');
title('Discrete-Time Fourier Transform of Rectangular Pulse Signal');
legend('102165022,Abhinandan');
