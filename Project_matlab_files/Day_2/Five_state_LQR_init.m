% FOR HELICOPTER NR 3-10
% This file contains the initialization for the helicopter assignment in
% the course TTK4115. Run this file before you execute QuaRC_ -> Build 
% to build the file heli_q8.mdl.

% Oppdatert høsten 2006 av Jostein Bakkeheim
% Oppdatert høsten 2008 av Arnfinn Aas Eielsen
% Oppdatert høsten 2009 av Jonathan Ronen
% Updated fall 2010, Dominik Breu
% Updated fall 2013, Mark Haring
% Updated spring 2015, Mark Haring


%%%%%%%%%%% Calibration of the encoder and the hardware for the specific
%%%%%%%%%%% helicopter
Joystick_gain_x = 1;
Joystick_gain_y = 1;


%%%%%%%%%%% Physical constants
g = 9.81; % gravitational constant [m/s^2]
l_c = 0.46; % distance elevation axis to counterweight [m]
l_h = 0.66; % distance elevation axis to helicopter head [m]
l_p = 0.175; % distance pitch axis to motor [m]
m_c = 1.92; % Counterweight mass [kg]
m_p = 0.72; % Motor mass [kg]

%Constants
Elev_offs = 0.52;
Vs_0 = 7.4;
K_f = (2*m_p*l_h*g - m_c*l_c*g)/(Vs_0*l_h);
K_1 = K_f /(2*m_p*l_p);
K_2 = (K_f * l_h) / (m_c*l_c^2 + 2 *m_p *l_h^2);
K_3 = g*(m_c*l_c-2*m_p*l_h)/(m_c*l_c^2 + 2*m_p*(l_h^2+l_p^2));

%Matrices
A = [0, 1, 0;
    0, 0, 0;
    0, 0, 0];

B = [0, 0;
    0, K_1;
    K_2, 0];

C = [1, 0, 0;
    0, 0, 1];

A_bar = [A,zeros(3,2);
        C, zeros(2)];

B_bar = [B;
        zeros(2)];
    
C_bar = [C, zeros(2)];

Q = diag([100 80 150 0.01 0.01]);

R = [1, 0;
    0, 1];

[K,S,e] = lqr(A_bar, B_bar, Q, R);

F = [K(1,1),K(1,3);K(2,1),K(2,3)];