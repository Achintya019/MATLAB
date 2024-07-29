clc;
clear;
%% Input Sequence
user_ip = input('Enter Sequence values with a space : ', 's');
ip_values = str2num(user_ip);

%% Calculate N-point DFT
N = length(ip_values);
X = zeros(1, N);
for k = 1:N
    X(k) = sum(ip_values .* exp(-1j * 2 * pi * (k-1) * (0:N-1) / N));
end

%% Calculate magnitude and phase spectra
magnitude_spectrum = abs(X);
phase_spectrum = angle(X);

%% IDFT
x_reconstructed = zeros(1, N);
for n = 1:N
    x_reconstructed(n) = (1/N) * sum(X .* exp(1j * 2 * pi * (n-1) * (0:N-1) / N));
end

%% Plot Original Signal
subplot(2, 2, 1)
stem(ip_values);
xlabel('TIme')
ylabel('Magnitude')
title('Original Signal')
%% Plot magnitude spectrum
subplot(2, 2, 2);
stem(magnitude_spectrum);
title('Magnitude Spectrum');
xlabel('Frequency (k)');
ylabel('Magnitude');

%% Plot phase spectrum
subplot(2, 2, 3);
stem(phase_spectrum);
title('Phase Spectrum');
xlabel('Frequency (k)');
ylabel('Phase (radians)');
%% Plot Recunstructed Signal
subplot(2, 2, 4)
stem(0:N-1,(x_reconstructed));
title('Reconstructed Signal')
xlabel('Time')
ylabel('Amplitude')
title('DFT Analysis');