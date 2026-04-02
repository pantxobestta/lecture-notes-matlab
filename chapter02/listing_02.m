% Definición del eje temporal
t = -10:0.01:10;

% Señal original
x_t = exp(-0.5 * abs(t));

% Escalamiento lineal
x_2t = exp(-0.5 * abs(2*t));   % Compresión x(2t)
x_t2 = exp(-0.5 * abs(t/2));   % Expansión x(t/2)

% Graficar las señales
figure;

% Señal original
subplot(3,1,1);
plot(t, x_t, 'b', 'LineWidth', 1.5);
grid on;
title('Señal Original x(t)');
xlabel('Tiempo t');
ylabel('Amplitud');
xlim([-10, 10]);

% Compresión x(2t)
subplot(3,1,2);
plot(t, x_2t, 'r', 'LineWidth', 1.5);
grid on;
title('Señal Comprimida x(2t)');
xlabel('Tiempo t');
ylabel('Amplitud');
xlim([-10, 10]);

% Expansión x(t/2)
subplot(3,1,3);
plot(t, x_t2, 'g', 'LineWidth', 1.5);
grid on;
title('Señal Expandida x(t/2)');
xlabel('Tiempo t');
ylabel('Amplitud');
xlim([-10, 10]);

% Guardar el gráfico como imagen
saveas(gcf, 'escalamiento_lineal.png');
