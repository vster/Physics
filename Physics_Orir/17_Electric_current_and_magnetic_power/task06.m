% Rs=0.2 Ohm
% Rr=0.1 Ohm
% y=1 cm
% E=12 V

clear
% Rt=Rs/2+Rr
Rt=0.2/2+0.1
It=12/Rt
Is=It/2
% 30 A

% F=(2*I*k0*q*v)/(c^2*y)                     (17-12)
% q=I*t=I*L/v => q*v=I*L
syms I k0 L c y
F=(2*I^2*k0*L)/(c^2*y)
digits(3)
F1=vpa(subs(F,[I k0 L c y],[30 9e9 1 3e8 1e-2]))
% 0.018 N