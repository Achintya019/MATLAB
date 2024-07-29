clc
clear all;
% PID Controller Constants
Kp = 2.0; % Proportional gain
Ki = 0.1; % Integral gain
Kd = 0.01; % Derivative gain

% Sampling Time (Ts)
Ts = 1; % 1-second sampling time

% Initialize variables
error = 0;
integral = 0;
prev_error = 0;

% Time vector for simulation
time = 0:Ts:1000; % Simulate for 100 seconds

% Setpoint for temperature control (desired temperature)
setpoint = 70; % Set desired temperature in degrees Celsius

% Simulated chamber temperature (process variable)
process_variable = zeros(size(time)); % Initialize the array with zeros

% Control signal (heating power)
control_signal = zeros(size(time));

%%% making of IIR filter from scratch

for t = 2:numel(time) 
    % Measure the chamber temperature (process variable)
    % Simulated chamber temperature response 
    % Here, we simulate a simple response to changes in control signal.
    process_variable(t) = 0.01 * control_signal(t-1) + 0.99 * process_variable(t-1) + 0.1 * randn();

    % Calculate the error
    error = setpoint - process_variable(t);

    % Calculate the integral term using IIR filter
    integral = integral + (Ki * Ts * error);

    % Calculate the derivative term using IIR filter
    derivative = (Kd / Ts) * (error - prev_error);

    % Calculate the control signal
    control_signal(t) = Kp * error + integral + derivative;

    % Update previous error for the next iteration
    prev_error = error;
end

% Plot the results
figure;
subplot(2, 1, 1);
plot(time, setpoint * ones(size(time)), 'b', time, process_variable, 'r');
title('Setpoint and Chamber Temperature');
legend('Setpoint', 'Chamber Temperature');
xlabel('Time (s)');
ylabel('Temperature (°C)');

subplot(2, 1, 2);
plot(time, control_signal, 'g');
title('Control Signal (Heating Power)');
xlabel('Time (s)');
ylabel('Heating Power');


