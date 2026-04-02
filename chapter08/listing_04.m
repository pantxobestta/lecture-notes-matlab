\[language=Matlab]
% % Señal original: seno de 5 Hz, muestreado a 1000 Hz durante 1 s
% fs = 1000;
% t = 0:1/fs:1;
% x = sin(2*pi*5\*t);           % señal senoidal de 5 Hz, amplitud \[-1,1]

% % Cuantización uniforma con B=3 bits en rango \[-1,1]
% B = 3;
% N = 2^B;
% x\_min = -1;
% x\_max = 1;
% Delta = (x\_max - x\_min)/(N - 1);           % tamaño de paso
% xq = round((x - x\_min)/Delta)\*Delta + x\_min;  % cuantización de x

% % Cálculo del error de cuantización
% error = xq - x;

% % Mostrar algunos valores de ejemplo
% disp(\[x(1:10)' xq(1:10)' error(1:10)'])
% % Gráfica de la señal original vs cuantizada (primeras 0.6 s)
% plot(t, x, 'b', t, xq, 'r--');
% legend('Original', 'Cuantizada');
% xlabel('Tiempo (s)'); ylabel('Amplitud');
% title('Señal senoidal de 5 Hz original y cuantizada a 3 bits');
%
