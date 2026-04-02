% Ejemplo: Interpolar secuencia con una sinc
% (Se asume fs y la secuencia x[n])
fs = 8000;
T = 1/fs;
n = 0:50;
x_samp = sin(2*pi*500*n*T);  % muestras

% Interpolar en un t continuo:
t_dense = linspace(0, 50*T, 2000);
x_interp = zeros(size(t_dense));
for i = 1:length(n)
    % sinc centered at nT
    x_interp = x_interp + x_samp(i)* ...
               sinc((t_dense - n(i)*T)/(T));
end

figure;
plot(t_dense, x_interp,'b','LineWidth',1.2); hold on;
stem(n*T, x_samp,'r');
title('Interpolación con Sinc');
xlabel('t (s)'); ylabel('Amplitud');
grid on;
legend('Señal Interpolada','Muestras');
