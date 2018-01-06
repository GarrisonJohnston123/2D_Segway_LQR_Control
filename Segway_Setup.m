%% This script sets up the variables for the segway project
%% Author: Garrison Johnston
%% Constants
Rw = 0.0216;            % radious of wheel [m]
Ts = 0.005;             % Step Size
Q = [500, 0,  0,   0;
     0,   50, 0,   0;
     0,   0,  500, 0;
     0,   0,   0,  50]; % State weight
R = 1;                  % Control Penalty
K = lqr(A,B,Q,R);

