% Parameters
Fs = 1000;            % Sampling frequency (Hz)
t = 0:1/Fs:5;         % Time vector (5 seconds)
freq_vibration = 10;  % Frequency of structural vibration (Hz)
Amp_vibration = 1.0;  % Amplitude of vibration
vibration_signal = Amp_vibration * sin(2*pi*freq_vibration*t);

% Add noise to the signal
noise_amplitude = 0.5;
noisy_signal = vibration_signal + noise_amplitude * randn(size(t));

%SNR = 20log10(amp_vib/noise_amp) == 6db in this case

% FIR Filter Design (Moving Average Filter)
filter_order = 20;  % Number of filter coefficients (filter order)
filter_coeff = ones(1, filter_order) / filter_order;

% Apply the FIR filter to the noisy signal
filtered_signal = zeros(size(noisy_signal));
for n = filter_order:length(noisy_signal)
    % Convolution operation to apply the filter
    filtered_signal(n) = sum(filter_coeff .* noisy_signal(n:-1:n-filter_order+1));
end

% Plot the original and filtered signals with labeled axes
figure;
subplot(2,1,1);
plot(t, noisy_signal, 'b');
title('Noisy Accelerometer Signal');
xlabel('Time (s)');
ylabel('Amplitude');
legend("Achintya,102115126")
grid on;

subplot(2,1,2);
plot(t, filtered_signal, 'r');
title('Filtered Accelerometer Signal');
xlabel('Time (s)');
ylabel('Amplitude');
legend("Achintya,102115126")
grid on;
