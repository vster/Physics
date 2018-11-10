% Coulomb's law
syms q1 q2 r k0
F=k0*q1*q2/r^2

% SGS
F_SGS=q1*q2/r^2

% 1 C = 2.998e9 SGSE

% SI
syms F
k0=F*r^2/(q1*q2)
% k0=9e9 N*m^2/C^2

% SI
% k0=1/(4*pi*epsilon0)
% F=(1/(4*pi*epsilon0))*(q1*q2/r^2)
% where
% epsilon0=1/(4*pi*k0)=8.854e-12 C^2/(N*m^2)