% Core binding energy
clear
syms E2 E1
Esv=E2-E1
syms c m1 m2
E1=m1*c^2
E2=m2*c^2
Esv=(m2-m1)*c^2
syms Dm
% Dm=m2-m1
Esv=Dm*c^2

% X_Z_A
syms Z A mp mn mc
Esv=(Z*mp+(A-Z)*mn-mc)*c^2                      % (7.9)
% 1 a.e.m. = 1.6606e-27 kg = 931.5 MeV
Esv=931.5*(Z*mp+(A-Z)*mn-mc) % MeV                (7.10)
Esv=931.5*(Z*mH+(A-Z)*mn-mc) % MeV                (7.11)
% mH = 1.00783 a.e.m.
% mn = 1.00815 a.e.m.