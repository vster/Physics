% Diffraction scattering

% sin(teta_min)=1.22*lam/a
% teta_min=(Rd/D)*1.22*(lam/a)
% a=1.22*lam*D/Rd

% lam=h/p
% sin(teta_min)=1.22*h/(p*a)
% a=2*R
% sin(teta_min)=0.61*h/(p*R)                     (23-8)

% R=0.61*h/(p*teta_min)
% teta_min=0.3 grad

% p*c*sin(teta)=4 GeV
clear
syms E c
P_sin_teta=E/c
P_sin_teta1=vpa(subs(P_sin_teta,[E c],[4e9*1.6e-19 3e8]))
% 2.13e-18 kg*m/s
syms h P_sin_teta
R=0.61*h/P_sin_teta
R1=vpa(subs(R,[h P_sin_teta],[6.6e-34 P_sin_teta1]))
% 1.89e-16 m = 0.19 fm
