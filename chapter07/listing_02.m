% Filtro Butterworth pasa-bajos (analogo, magnitud)
n = 2;
wc = 1000; 
w = linspace(0, 3000, 1000);

H_butt_mag = 1 ./ sqrt(1 + (w/wc).^(2*n));

figure;
plot(w, 20*log10(H_butt_mag),'LineWidth',1.2);
title('Butterworth Pasa-Bajos (Magnitud en dB)');
xlabel('\omega (rad/s)'); ylabel('Magnitud (dB)');
grid on;
