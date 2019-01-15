clear
syms Ex Ey Ez 
E=[Ex;Ey;Ez]

syms E1 E2 k z w t phi1 phi2
E=[E1*cos(k*z-w*t+phi1);E2*cos(k*z-w*t+phi2);0]
% E1*cos(phi1 + k*z - t*w)
% E2*cos(phi2 + k*z - t*w)                              (1)
%                        0

% If t=0
E=[E1*cos(k*z+phi1);E2*cos(k*z+phi2);z]
% E1*cos(phi1 + k*z)
% E2*cos(phi2 + k*z)                                     (2) 
%                  z

% If z=0
E=[E1*cos(-w*t+phi1);E2*cos(-w*t+phi2);t]
% E1*cos(phi1 - t*w)
% E2*cos(phi2 - t*w)                                     (3)
%                  t