close all;

figure;
subplot(3,2,1);
plot(luenberg_estimate.time, luenberg_estimate.signals.values(:,1), 'r');
hold on;
plot(x_hat.time, x_hat.signals.values(:,1), 'b');
legend('Estimated Luenberger Pitch', 'Estimated Kalman Pitch');
xlabel('Time / [s]');
ylabel('Pitch / [Rad]');
title('Pitch');

subplot(3,2,2);
plot(luenberg_estimate.time, luenberg_estimate.signals.values(:,2), 'r');
hold on;
plot(x_hat.time, x_hat.signals.values(:,2), 'b');
legend('Estimated Luenberger Pitch rate', 'Estimated Kalman Pitch rate');
xlabel('Time / [s]');
ylabel('Pitch Rate / [Rad/s]');
title('Pitch Rate');

subplot(3,2,3);
plot(luenberg_estimate.time, luenberg_estimate.signals.values(:,3), 'r');
hold on;
plot(x_hat.time, x_hat.signals.values(:,3), 'b');
legend('Estimated Luenberger Elevation', 'Estimated Kalman Elevation');
xlabel('Time / [s]');
ylabel('Elevation / [Rad]');
title('Elevation');

subplot(3,2,4);
plot(luenberg_estimate.time, luenberg_estimate.signals.values(:,4), 'r');
hold on;
plot(x_hat.time, x_hat.signals.values(:,4), 'b');
legend('Estimated Luenberger Elevation rate', 'Estimated Kalman Elevation rate');
xlabel('Time / [s]');
ylabel('Elevation Rate / [Rad/s]');
title('Elevation Rate');

subplot(3,2,5);
plot(luenberg_estimate.time, luenberg_estimate.signals.values(:,5), 'r');
hold on;
plot(x_hat.time, x_hat.signals.values(:,6), 'b');
legend('Estimated Luenberger Travel rate', 'Estimated Kalman Travel rate');
xlabel('Time / [s]');
ylabel('Travel Rate / [Rad/s]');
title('Travel Rate');
