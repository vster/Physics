% Coulomb's law
clear
syms q1 q2 r k0
F=k0*q1*q2/r^2

% SGS
F_SGS=q1*q2/r^2

% 1 C = 2.998e9 SGSE

% SI
syms F
k0=F*r^2/(q1*q2)
% k0=9e9 N*m^2/C^2

syms dina cm SGSE
k0_sgse=subs(k0,[F r q1 q2],[1*dina 1*cm 1*SGSE 1*SGSE])
% (cm^2*dina)/SGSE^2

digits(4)
syms N m C
k0_SI=subs(k0_sgse,[dina cm SGSE],[1e-5*N 1e-2*m 1*C/2.998e9])
% (8988004000*N*m^2)/C^2 ~ 9e9 N*m^2/C^2

% SI
% k0=1/(4*pi*epsilon0)
% F=(1/(4*pi*epsilon0))*(q1*q2/r^2)
syms epsilon0 
F=(1/(4*pi*epsilon0))*(q1*q2/r^2)
% where
% epsilon0=1/(4*pi*k0)=8.854e-12 C^2/(N*m^2)
k0=8.988e9
epsilon0=1/(4*pi*k0)
% 8.8537e-12 C^2/(N*m^2)