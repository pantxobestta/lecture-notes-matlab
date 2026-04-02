[language=Matlab, caption={Detector de envolvente}]
% Detector de envolvente
Fs = 50000; t = 0:1/Fs:0.02;
fm = 100; fc = 1000;
m = 0.5 * cos(2*pi*fm*t);   % señal moduladora
A = 0.5;
y = (A + m) .* cos(2*pi*fc*t);  % AM con portadora

env = abs(hilbert(y));          % Envolvente

figure;
plot(t(1:1000), y(1:1000), 'b'); hold on;
plot(t(1:1000), env(1:1000), 'r--', 'LineWidth', 2);
xlabel('Tiempo (s)'); ylabel('Amplitud');
title('Señal AM y su envolvente');
legend('y(t)', 'Envolvente');
