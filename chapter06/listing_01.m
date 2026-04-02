% Parametros
a = 0.8;  % Debe ser 0<a<1
N = 50;   % Numero de muestras en tiempo para visualizacion
n = 0:N;

% Señal en el tiempo
x = a.^n;  % x[n] = a^n u[n]

figure;
subplot(2,2,1);
stem(n, x,'LineWidth',1.2);
title('Señal x[n] = a^n u[n]');
xlabel('n'); ylabel('x[n]');
grid on;

% Se define un vector de frecuencias de -pi a pi
w = linspace(-pi, pi, 1000);
% Calculo de la TDF con la formula:
X = 1 ./ (1 - a.*exp(-1j*w));

% Magnitud y Fase
X_mag = abs(X);
X_phase = angle(X);

% Graficar Magnitud
subplot(2,2,2);
plot(w, X_mag,'LineWidth',1.2);
title('|X(e^{j\omega})|');
xlabel('\omega (rad)'); ylabel('Magnitud');
grid on;

% Graficar Fase
subplot(2,2,3);
plot(w, X_phase,'LineWidth',1.2);
title('Fase de X(e^{j\omega})');
xlabel('\omega (rad)'); ylabel('Fase (rad)');
grid on;
