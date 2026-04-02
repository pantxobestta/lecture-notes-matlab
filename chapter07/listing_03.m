% Bode de 1er Orden
wc = 1000;
w = logspace(1,4,200);
H_1 = 1 ./ (1 + 1j*(w/wc));

H_dB = 20*log10(abs(H_1));
Phase = angle(H_1)*(180/pi);

figure;
subplot(2,1,1);
semilogx(w, H_dB,'LineWidth',1.2);
title('Bode Magnitud (1er Orden)');
xlabel('\omega (rad/s)'); ylabel('Magnitud (dB)');
grid on;

subplot(2,1,2);
semilogx(w, Phase,'LineWidth',1.2);
title('Bode Fase (1er Orden)');
xlabel('\omega (rad/s)'); ylabel('Fase (grados)');
grid on;
