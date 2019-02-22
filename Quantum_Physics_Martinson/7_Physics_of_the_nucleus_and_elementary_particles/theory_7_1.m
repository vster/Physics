% Atomic nucleus

% Proton
% mp=1.67265e-27 kg = 1836*me
% E0=938.26 MeV
% s=1/2
% mup=+2.7928*muc
syms e hp mp
muc=e*hp/(2*mp)
digits(3)
muc1=vpa(subs(muc,[e hp mp],[1.6e-19 1.05e-34 1.67e-27]))
% 5.051e-27 J/T

% Neutron
% mn=1.67495e-27 kg
% E0=939.55 MeV
% s=1/2
% mun=-1.9131*muc

% X_Z_A

% R=1.3*A^(1/3)*Phi
% Phi = 1 fm =1e-15 m

% H1_1
% D = H1_2
% T = H1_3

% Isotopes
% U92_238
% U92_235
% U92_234

% Isobars
% Ar18_40
% Ca20_40

% Isotones
% C6_13
% N7_14

% Nuclear forces

% tau=hp/(mm*c^2)                       (7.2)
