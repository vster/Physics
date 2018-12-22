% EK0 = 1 MeV

% a)
% EK0=m*v^2/2
% v=sqrt(2*EK0/m)
% v1=v/2=sqrt(K/2m) => EK1=m*v1^2/2=EK0/4
% v2=v/2=sqrt(K/2m) => EK2=m&v2^2/2=EK0/4
% EK=EK1+EK2=EK0/2=0.5 MeV

% b)
clear
syms EK0
EKc=EK0/2
EKc=(1*1e6*1.6e-19/2)
% 8.0000e-14 J

% c
% EKc=U=k0*q^2/r
syms k0 q EKc
r=k0*q^2/EKc
digits(3)
r=vpa(subs(r,[k0 q EKc],[9e9 1.6e-19 8e-14]))
% 2.88e-15 m

