close all;

figure;
subplot(3,2,1);
plot(y.time, y.signals.values(:,1), 'c');
hold on;
plot(x_hat.time, x_hat.signals.values(:,1), 'b');
hold on;
plot(Encoder.time, Encoder.signals.values(:,1), 'r');
legend('Raw measurement', 'Estimated Pitch', 'Encoder Pitch');
xlabel('Time / [s]');
ylabel('Pitch / [Rad]');
title('Pitch');

subplot(3,2,2);
plot(y.time, y.signals.values(:,2), 'c');
hold on;
plot(x_hat.time, x_hat.signals.values(:,2), 'b');
hold on;
plot(Encoder.time, Encoder.signals.values(:,2), 'r');
legend('Raw measurement', 'Estimated Pitch Rate', 'Encoder Pitch Rate');
xlabel('Time / [s]');
ylabel('Pitch Rate / [Rad/s]');
title('Pitch Rate');

subplot(3,2,3);
plot(y.time, y.signals.values(:,3), 'c');
hold on;
plot(x_hat.time, x_hat.signals.values(:,3), 'b');
hold on;
plot(Encoder.time, Encoder.signals.values(:,3), 'r');
legend('Raw measurement', 'Estimated Elevation', 'Encoder Elevation');
xlabel('Time / [s]');
ylabel('Elevation / [Rad]');
title('Elevation');

subplot(3,2,4);
plot(y.time, y.signals.values(:,4), 'c');
hold on;
plot(x_hat.time, x_hat.signals.values(:,4), 'b');
hold on;
plot(Encoder.time, Encoder.signals.values(:,4), 'r');
legend('Raw measurement', 'Estimated Elevation Rate', 'Encoder Elevation Rate');
xlabel('Time / [s]');
ylabel('Elevation Rate / [Rad/s]');
title('Elevation Rate');

subplot(3,2,5);
plot(y.time, y.signals.values(:,5), 'c');
hold on;
plot(x_hat.time, x_hat.signals.values(:,5), 'b');
hold on;
plot(Encoder.time, Encoder.signals.values(:,6), 'r');
legend('Raw measurement', 'Estimated Travel Rate', 'Encoder Travel Rate');
xlabel('Time / [s]');
ylabel('Travel Rate / [Rad/s]');
title('Travel Rate');

subplot(3,2,6);
plot(Lpoles,'x');
grid on;
xlabel('Real');
ylabel('Imag');
title('Poleplacement Complex plane');

