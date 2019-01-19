clear
syms k0 c I L dL r R
dB=(k0/c^2)*I*dL/r^2

% dBx=(k0/c^2)*I*(dL/r^2)*sin(alfa)=(k0/c^2)*I*(R/r^3)*dL
dBx=(k0/c^2)*I*(R/r^3)*dL
Bx=int(dBx/dL,L,0,2*pi*R)
% (2*pi*I*R^2*k0)/(c^2*r^3)
syms A 
% A=pi*R^2 -square of ring with current
B=(k0/c^2)*2*I*A/r^3                            %  (18-9)