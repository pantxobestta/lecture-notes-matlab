% Parámetros
t = linspace(-pi, pi, 1000);
T0 = 2*pi; % Periodo fundamental
w0 = 2*pi / T0;

% Señal original
x_t = sawtooth(w0 * t, 0.5); % Onda triangular

% Cálculo de coeficientes de Fourier
N = 10;
A_k = zeros(1, 2*N+1);
k_vals = -N:N;
for k = -N:N
    A_k(k+N+1) = (2/T0) * trapz(t, x_t .* exp(-1j * k * w0 * t));
end

% Reconstrucción de la señal con la serie de Fourier
y_t = zeros(size(t));
for k = -N:N
    y_t = y_t + A_k(k+N+1) * exp(1j * k * w0 * t);
end

% Gráfica de la serie de Fourier
figure;
subplot(2,1,1);
plot(t, x_t, 'r', 'LineWidth', 1.5);
hold on;
plot(t, real(y_t), 'b', 'LineWidth', 1.5);
grid on;
title('Serie de Fourier y Señal Original');
legend('Señal Original', 'Aproximación Fourier');

% Gráfica de coeficientes de Fourier
subplot(2,1,2);
stem(k_vals, abs(A_k), 'filled');
grid on;
title('Coeficientes de Fourier |A_k|');
xlabel('Índice k');
ylabel('Magnitud');
