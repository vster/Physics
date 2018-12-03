% V=E*R
% R=Vmax/E
clear
syms Vmax E V
Vmax=5e5
Emax=1e6
R=V/E
R1=subs(R,[V,E],[Vmax,Emax])
R1=vpa(R1)
% 0.5 m
syms V R k0
Qmax=V*R/k0
Qmax=subs(Qmax,[V,R,k0],[Vmax,R1,9e9])
% 2.78e-5 C