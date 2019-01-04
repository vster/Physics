% Main conclusions

% Photo effect
clear
syms h f W0
Kmax=h*f-W0
% W0=U0-Kf

% Compton effect
% lam1-lam=h/(m*c)*(1-cos(teta))

% Electron diffraction by metal
% sin(teta)=h/(p*d)
syms h p d
sin_teta=h/(p*d)

% Wave function Psi
% Probability of finding a particle
% |Psi(x,y,z,t)|^2

% Psi=Psi1+Psi2
