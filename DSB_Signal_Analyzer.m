%DSB Signal Analyzer
Fs = 5000;      % Sampling frequency
Fc = 50;        % Carrier signal
A = 1;          % Amplitude
Ts = 1/Fs;      % Period of sampling frequency
t = [-1:Ts:1];  % Time array between -1 and 1 with increment of Ts value
 
message = exp(-5*(t.^2)) .* A;  % Calculationg message signal

carrier = cos(2*pi*Fc*t) .* A; % Calculating carrier signal

modulation_dsb = message .* carrier; % Calculating DSB signal

% Plotting
subplot(3,1,1);
plot(t, message);
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, carrier);
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, modulation_dsb);
title('DSB Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');