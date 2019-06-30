clear
digits(4)
% 1x1 m^2
% R=V/I=E*y0/(J*z0)
% y0=z0=1 m
% R=E0/J=2*pi*k0/c
syms k0 c
R=2*pi*k0/c
R1=vpa(subs(R,[pi k0 c],[3.1415 9e9 3e8]))
% 188.5 Om
R2=4*pi*k0/c
R2=vpa(subs(R2,[pi k0 c],[3.1415 9e9 3e8]))
% 377.0 Om

syms mu0 eps0
R3=sqrt(mu0/eps0)
R3=vpa(subs(R3,[mu0 eps0],[4*pi*1e-7 8.854e-12]))
% 376.7 Om