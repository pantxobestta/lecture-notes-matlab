% Definición del eje temporal
t = -10:0.01:10;

% Señal original
x_t = exp(-0.5 * abs(t));

% Desplazamiento temporal
t_0 = 3; % Desplazar 3 unidades a la derecha
x_shifted = exp(-0.5 * abs(t - t_0));

% Graficar las señales
figure;

% Señal original
subplot(2,1,1);
plot(t, x_t, 'b', 'LineWidth', 1.5);
grid on;
title('Señal Original x(t)');
xlabel('Tiempo t');
ylabel('Amplitud');
xlim([-10, 10]);

% Señal desplazada
subplot(2,1,2);
plot(t, x_shifted, 'r', 'LineWidth', 1.5);
grid on;
title('Señal Desplazada x(t - t_0)');
xlabel('Tiempo t');
ylabel('Amplitud');
xlim([-10, 10]);

% Guardar el gráfico como imagen
saveas(gcf, 'desplazamiento_temporal.png');
