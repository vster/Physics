% a)
% Phi=int_c()E*dA=4*pi*k0*Qin
% Phi=4*pi*k0*(q-q)=0

% b)
% V=k0*q/r+k0*(-q)/r=0

% c)
syms k0 q r
E=2*k0*q/r^2
E1=subs(E,[k0 q r],[9e9 1e-7 0.01])
% 18000000 = 1.8e7 V/m
