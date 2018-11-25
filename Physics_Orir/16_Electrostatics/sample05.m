% V=k0*Q/R=(k0*Q/R^2)*R
% V=E*R
clear
digits(4)
Emax=1e6 % V/m
R1=0.15  % m

syms E R
V=E*R
Vmax=subs(V,[E R],[Emax R1])
Vmax=vpa(Vmax)
% 1.5e5 V

% V=k0*Q/R => Qmax=Vmax*R/k0
syms V R k0
Q=V*R/k0
Qmax=subs(Q,[V R k0],[Vmax R1 9e9])
Qmax=vpa(Qmax)
% 2.5e-6 C
