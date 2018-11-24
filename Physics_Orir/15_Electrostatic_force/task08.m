% r=0.1 % m
% q=1e-8 % C
clear
digits(4)
syms r k0 q phi
r1=r/sqrt(2)
E1=k0*q/r1^2
E=4*E1*cos(phi)
% (8*k0*q*cos(phi))/r^2
E=subs(E,[k0 q phi r],[9e9 1e-8 pi/4 0.1])
% 36000*2^(1/2)
vpa(E)
