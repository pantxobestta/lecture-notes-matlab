Fs = 48000; t = 0:1/Fs:0.1;

x_a = cos(2*pi*300*t) + 0.5*cos(2*pi*600*t);
x_b = cos(2*pi*400*t) + 0.5*cos(2*pi*800*t);
x_c = cos(2*pi*500*t) + 0.5*cos(2*pi*1000*t);

w = x_a.*cos(2*pi*5000*t) + ...
    x_b.*cos(2*pi*9000*t) + ...
    x_c.*cos(2*pi*13000*t);

N = length(t);
f = (-N/2:N/2-1)*(Fs/N);
W = fftshift(fft(w, N));

figure;
plot(f, abs(W)/max(abs(W)));
xlabel('Frecuencia (Hz)'); ylabel('|W(j\omega)| normalizado');
title('Espectro de la señal FDM');
xlim([0 15000]);
