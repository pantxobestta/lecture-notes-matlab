% Ejemplo: Muestrear x(t) = sin(2*pi*1kHz * t),  en [0, 2 ms]
fs = 8000;     % Frecuencia de muestreo (Hz)
T = 1/fs; 
t_cont = linspace(0, 2e-3, 1000); 
x_cont = sin(2*pi*1000*t_cont);

% Muestras
nmax = floor((2e-3)/T);
n = 0:nmax;
t_samp = n*T;
x_samp = sin(2*pi*1000*t_samp);

figure;
plot(t_cont*1e3, x_cont,'LineWidth',1.2); hold on;
stem(t_samp*1e3, x_samp,'r','LineWidth',1.2);
title('Señal continua x(t) y sus muestras');
xlabel('t (ms)'); ylabel('Amplitud');
legend('x(t) continuo','Muestras x[n]');
grid on;
