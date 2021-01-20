close all;

plot(Pitch.time, Pitch.signals.values, 'b');
hold on;
plot(Pitch_ref.time, Pitch_ref.signals.values, 'r');
legend('Pitch', 'Pitch ref');
xlabel('Time / [s]');
ylabel('Pitch / [Rad]');
title('PD-controller, -2.7+j0 and -2.5+j0');