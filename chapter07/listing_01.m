% Ejemplo: Filtro Pasa‑bajos (orden 1) + Filtro ideal para comparación
wc = 1000;          % Frecuencia de corte (rad/s)
n  = 1;
w  = linspace(0, 5000, 1000);    % Vector de frecuencias

% Filtro pasa‑bajos de primer orden en frecuencia
H_lp = (wc^n) ./ ( (wc + 1j*w).^n );

% Filtro pasa‑bajos ideal (rectángulo de magnitud)
H_ideal_mag   = double(w <= wc);        % |H_ideal| = 1  para w <= wc, 0 en caso contrario
H_ideal_phase = zeros(size(w));         % Fase nula (ideal no causal)

figure;

% ── Magnitud ────────────────────────────────────────────────────────────
subplot(2,1,1);
plot(w, abs(H_lp), 'LineWidth', 1.2, 'Color', [0 0.45 0.74]); hold on;  % Azul
plot(w, H_ideal_mag, 'r--', 'LineWidth', 1.4);                           % Rojo punteado
title('Magnitud |H(j\omega)|: Filtro PB orden 1 vs. Ideal');
xlabel('\omega (rad/s)'); ylabel('|H(j\omega)|');
legend('Orden 1', 'Ideal', 'Location', 'southwest');
grid on; axis tight;

% ── Fase ────────────────────────────────────────────────────────────────
subplot(2,1,2);
plot(w, angle(H_lp), 'LineWidth', 1.2, 'Color', [0 0.45 0.74]); hold on;
plot(w, H_ideal_phase, 'r--', 'LineWidth', 1.4);
title('Fase \angle H(j\omega): Filtro PB orden 1 vs. Ideal');
xlabel('\omega (rad/s)'); ylabel('Fase (rad)');
legend('Orden 1', 'Ideal', 'Location', 'southwest');
grid on; axis tight;
