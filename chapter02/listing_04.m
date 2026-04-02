% Configuración del eje temporal
t = -5:0.01:5;

% Escalón unitario
u_t = t >= 0;

% Impulso unitario aproximado
delta_t = zeros(size(t));
delta_t(abs(t) < 0.01) = 1/0.01; % Aproximación del impulso

% Integral del impulso
integral_delta = cumsum(delta_t) * 0.01;

% Graficar las señales
figure;

% Escalón unitario
subplot(3, 1, 1);
plot(t, u_t, 'b', 'LineWidth', 1.5);
grid on;
title('Escalón Unitario u(t)');
xlabel('Tiempo t');
ylabel('Amplitud');

% Impulso unitario
subplot(3, 1, 2);
stem(t, delta_t, 'r', 'LineWidth', 1.5);
grid on;
title('Impulso Unitario \delta(t)');
xlabel('Tiempo t');
ylabel('Amplitud');

% Integral del impulso
subplot(3, 1, 3);
plot(t, integral_delta, 'g', 'LineWidth', 1.5);
grid on;
title('Integral del Impulso: \int \delta(t) \, dt');
xlabel('Tiempo t');
ylabel('Amplitud');

% Guardar gráfico
saveas(gcf, 'escalon_impulso_continuo.png');
