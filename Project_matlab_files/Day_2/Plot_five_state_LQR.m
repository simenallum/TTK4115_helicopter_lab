close all;



suptitle('Pitch and elevation rate');
subplot(1,2,1);
plot(Reference.time, Reference.signals.values(:,1), 'b');
hold on;
plot(Encoder.time, Encoder.signals.values(:,1), 'r');
legend('Pitch Reference', 'Pitch');
xlabel('Time / [s]');
ylabel('Pitch / [Rad]');
grid on;

subplot(1,2,2); 
plot(Reference.time, Reference.signals.values(:,2), 'b');
hold on;
plot(Encoder.time, Encoder.signals.values(:,4), 'r');
legend('Elevation dot Reference', 'Elevation dot');
xlabel('Time / [s]');
ylabel('Elevation rate / [Rad/s]');
grid on;