% Bode 2do Orden
wc = 500; 
zeta = 0.2;
w = logspace(1,4,300);

num = wc^2;
den = (-w.^2) + 1j*(2*zeta*wc*w) + wc^2;
H_2 = num ./ den;

H2_dB = 20*log10(abs(H_2));
Phase2 = angle(H_2)*180/pi;

figure;
subplot(2,1,1);
semilogx(w, H2_dB,'LineWidth',1.2);
title('Bode Magnitud (2do Orden)');
xlabel('\omega (rad/s)'); ylabel('Magnitud (dB)');
grid on;

subplot(2,1,2);
semilogx(w, Phase2,'LineWidth',1.2);
title('Bode Fase (2do Orden)');
xlabel('\omega (rad/s)'); ylabel('Fase (grados)');
grid on;
