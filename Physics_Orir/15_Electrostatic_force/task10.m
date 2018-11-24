% a) 0

% b)
% int_c()E*dA=4*pi*k0*q
% E*AE=4*pi*k0*QE
% E=4*pi*k0*QE/AE=4*pi*k0*sigma
% E=4*pi*k0*e/r^2

clear
digits(4)
syms k0 e r
E=4*pi*k0*e/r^2
E=subs(E,[k0 e r],[9e9 1.6e-19 0.01])
vpa(E)