% Ejemplo rapido: señal y su transformada usando FFT
% (solo para fines ilustrativos, no es la definicion matematica exacta)
n = 0:99;
x = [ones(1,50), zeros(1,50)];  % pulso de ancho 50
X_fft = fft(x);

figure;
subplot(2,1,1);
stem(n, x);
title('Señal en el Dominio del Tiempo');
xlabel('n'); ylabel('x[n]');
grid on;

subplot(2,1,2);
stem(n, abs(X_fft));
title('Magnitud de la Transformada (FFT)');
xlabel('Frecuencia discreta'); ylabel('|X_fft|');
grid on;
