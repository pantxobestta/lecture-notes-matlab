% EJEMPLO: Calcular y graficar coeficientes de Fourier de sin(w0 t)
T = 2*pi;  % Periodo fundamental
omega0 = 2*pi/T;
N = 1000; % Numero de puntos para la grafica
t = linspace(0, T, N);
x_t = sin(omega0 * t);

% Calculo de coeficientes (por integracion numerica)
kVals = -5:5;
Ak = zeros(size(kVals));

for ii = 1:length(kVals)
    k = kVals(ii);
    fun = @(tt) sin(omega0*tt) .* exp(-1j*k*omega0*tt);
    Ak(ii) = (1/T) * integral(fun, 0, T);
end

figure;
stem(kVals, abs(Ak));
xlabel('Indice k'); ylabel('|a_k|');
title('Coeficientes de Fourier de sin(omega0 t)');
grid on;
