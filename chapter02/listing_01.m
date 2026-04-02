% Definición del eje temporal solo para valores positivos
t = 0:0.01:10;

% Definición de la señal original
x_t = exp(-0.5 * t); % Señal exponencial como ejemplo

% Reflexión de la señal
x_reflect = exp(-0.5 * -t); % Nota: el dominio reflejado será negativo

% Graficar la señal original y la reflejada
figure;

% Señal original
subplot(2, 1, 1);
plot(t, x_t, 'b', 'LineWidth', 1.5);
grid on;
title('Señal Original x(t)');
xlabel('Tiempo t');
ylabel('Amplitud');
xlim([0, 10]);

% Señal reflejada
subplot(2, 1, 2);
plot(-t, x_t, 'r', 'LineWidth', 1.5); % Cambiar el eje de tiempo
grid on;
title('Señal Reflejada x(-t)');
xlabel('Tiempo t');
ylabel('Amplitud');
xlim([-10, 0]);

% Ajuste general
sgtitle('Reflexión de una Señal');
