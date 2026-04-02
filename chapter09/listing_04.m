Fs = 50000; t = 0:1/Fs:0.1;
x = cos(2*pi*1000*t) + cos(2*pi*2000*t);  % Señal moduladora con dos tonos
fc = 10000;                               % Frecuencia portadora (Hz)

% Modulación DSB-SC
y_dsb = x .* cos(2*pi*fc*t);

% Filtro pasa banda para obtener solo banda lateral superior
% FFT y eliminación manual de la banda inferior
N = length(y_dsb);
Y = fft(y_dsb);
f = (0:N-1)*(Fs/N);

% Crear máscara de filtro (mantener solo banda superior)
passband = (f > (fc + 800)) & (f < (fc + 3000));  % Banda deseada
mask = zeros(size(Y));
mask(passband) = 1;

% Aplicar filtro en frecuencia (mantener conjugado para señal real)
Y_filt = Y .* mask;
Y_filt = Y_filt + conj(flip(Y_filt));  % asegurar que sea real

% Señal SSB en el tiempo
y_ssb = real(ifft(Y_filt));

% Graficar resultados
figure;
subplot(2,1,1);
plot(t, y_ssb);
xlim([0 0.01]);
title('Señal SSB-BLS en el tiempo');

subplot(2,1,2);
f_axis = (-N/2:N/2-1)*(Fs/N);
plot(f_axis, fftshift(abs(fft(y_ssb))));
xlim([0 15000]);
xlabel('Frecuencia (Hz)');
ylabel('|Y_{SSB}(j\omega)|');
title('Espectro de la señal SSB');
