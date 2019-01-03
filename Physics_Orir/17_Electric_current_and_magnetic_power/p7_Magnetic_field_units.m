% Magnetic field units
% F=q*E+q*cross(v*B)
% E ~ v*B => B~E/v
syms V m s
B_si=(V/m)/(m/s)
% (V*s)/m^2 ~ T = Tesla ~ Vb/m^2
% SGS
% Fmag=(q*v/c)*Bsgs
% 1 T = 1e4 Gs (Gauss)
% B_si <-> B_sgs/c