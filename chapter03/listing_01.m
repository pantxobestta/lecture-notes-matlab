% Parámetros
alpha = 1;
beta = 2;
t = 0:0.01:5;

% Funciones
x_t = exp(-alpha * t) .* (t >= 0);
h_t = exp(-beta * t) .* (t >= 0);

% Convolución
y_t = conv(x_t, h_t, 'same') * 0.01;

% Gráfica
figure;
plot(t, y_t, 'b', 'LineWidth', 1.5);
grid on;
title('Respuesta del Sistema y(t)');
xlabel('Tiempo t');
ylabel('Amplitud');
