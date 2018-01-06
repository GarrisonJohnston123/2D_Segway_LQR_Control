function [ x_dot ] = segway_ode( t, x, V)
%% segway_ode: ODE function for a 2D segway
%% Author: Garrison Johnston
%% INPUTS:
% t: unused (required for ODE solvers)
% x: 6x1 state vector, x = [x; x_dot; alpha; alpha_dot]
% V: input Voltage
%% OUTPUTS:
% x_dot: 6x1 vector of state derivates
%% Constants
g = 9.81;        % gravity acceleration [m/s^2]
L = 0.095;       % pendulum length [m]
m_bat = 6*24e-3; % Mass of battery
mp = 0.187+m_bat;% mass of pendulum [kg]
mw = 0.036;      % mass of wheel [kg]
R = 0.0216;      % radious of wheel [m]
Iw = 0.5*mw*R^2; % wheel moment of inertia [kgm^2]
Rm = 5.2;        % resistance of motor [ohms]
kb = 0.495;      % Back EMF constant [Vs/rad]
kt = 0.32;       % Nm/A
T = (kt/Rm)*(V-kb*(-x(4)-x(2)/R)); % input torque
%% Mass matrix
M = [cos(x(3))*L, sin(x(3))*L, 0, 0,  0,    0;
     1,           0,           0, 0, -mp,   mp*L*cos(x(3));
     0,           1,           0, 0,  0,    mp*L*sin(x(3));
    -1,           0,          -1, 0, -mw,   0;
     0,          -1,           0, 1,  0,    0;
     0,           0,          -R, 0,  Iw/R, 0];
 b = [T;
      L*x(4)^2*sin(x(3))*mp;
     -L*x(4)^2*cos(x(3))*mp+mp*g;
      0;
      mw*g;
     -T];
 z = inv(M)*b;
 %% ODE
 x_dot(1) = x(2);
 x_dot(2) = z(5);
 x_dot(3) = x(4);
 x_dot(4) = z(6);
 x_dot = x_dot';
end

