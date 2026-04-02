[language=Matlab, caption={AM-DSB-SC y su espectro}]
% AM-DSB-SC y su espectro
Fs = 50000;                    % Frecuencia de muestreo
t = 0:1/Fs:0.02;               % Vector de tiempo
fm = 1000;                     % Frecuencia de la señal moduladora (1 kHz)
fc = 10000;                    % Frecuencia de la portadora (10 kHz)
x = cos(2*pi*fm*t);           % Señal moduladora
y = x .* cos(2*pi*fc*t);      % Señal AM-DSB-SC

% Espectro
N = length(t);
f = (-N/2:N/2-1)*(Fs/N);
X = fftshift(fft(x, N));
Y = fftshift(fft(y, N));

figure;
subplot(2,1,1);
plot(t, x, 'b'); hold on;
plot(t, y, 'r');
xlabel('Tiempo (s)'); ylabel('Amplitud');
title('x(t) y señal AM-DSB-SC');

subplot(2,1,2);
plot(f, abs(X)/max(abs(X)), 'b'); hold on;
plot(f, abs(Y)/max(abs(Y)), 'r');
xlabel('Frecuencia (Hz)'); ylabel('Magnitud Normalizada');
title('Espectros de x(t) y AM-DSB-SC');
legend('X(j\omega)', 'Y(j\omega)');
