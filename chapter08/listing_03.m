fs = 44000;  % muestreo 44 kHz
f_tono = 60000;  % 60 kHz real
tmax = 1e-3;
t_cont = linspace(0, tmax, 2000);
x_cont = cos(2*pi*f_tono*t_cont);

% Muestras
nmax = floor(tmax*fs);
n = 0:nmax;
t_samp = n/fs;
x_samp = cos(2*pi*f_tono*t_samp);

figure;
subplot(2,1,1);
plot(t_cont*1e3, x_cont,'LineWidth',1.2);
title('Tono 60 kHz - continuo');
xlabel('t (ms)'); ylabel('Amplitud'); grid on;

subplot(2,1,2);
stem(t_samp*1e3, x_samp,'r','LineWidth',1.2);
title('Muestras a 44 kHz (alias ~16 kHz)');
xlabel('t (ms)'); ylabel('Amplitud'); grid on;
