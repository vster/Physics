% R=0.53e-10 m
% a) v-?
% b) V,E - ?

% a)
% F=k0*e^2/R^2=m*a=m*v^/R
% k0*e^2/R^2=m*v^2/R
% v=sqrt(k0*e^2/(m*R)
syms k0 e m R
v=sqrt(k0*e^2/(m*R))
v1=subs(v,[k0 e m R],[9e9 1.6e-19 9.1e-31 0.53e-10])
digits(3)
v1=vpa(v1)
% 2.19e6 m/c
c=3e8
kc=c/v1
% 137.0

% b)
U=-k0*e^2/R
U1=subs(U,[k0 e R],[9e9 1.6e-19 0.53e-10])
U1=vpa(U1)
% -4.35e-18 J
UeV=U1/1.6e-19
% -27.2 eV

% k0*e^2/R^2=m*v^2/R  *R/2
% K=1/2*m*v^2=1/2*k0*e^2/R = -1/2*U
KeV=-1/2*UeV
% 13.6 eV
Eev=KeV+UeV
% -13.6 eV
