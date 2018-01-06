%% This script sets up the variables for the segway project
%% Author: Garrison Johnston
%% Constants
x0 = [0,0,15*pi/180,0]'; % Initial conditions
tstop = 10;
%% Linearization
V = 0;
lin_point = [0, 0, 0, 0]'; % Linearization point
[A, B] = GetLinModFtxu(@segway_ode, [], lin_point, V);
Rw = 0.0216;            % radious of wheel [m]
Ts = 0.005;             % Step Size
%% LQR
Q = [500, 0,  0,   0;
     0,   50, 0,   0;
     0,   0,  500, 0;
     0,   0,   0,  50]; % State weight
R = 1;                  % Control Penalty
K = lqr(A,B,Q,R);

