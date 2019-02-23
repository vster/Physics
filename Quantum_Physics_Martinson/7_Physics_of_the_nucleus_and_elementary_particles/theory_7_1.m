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

% Cloud virtual mesons
% rm=c*tau=c*hp/(mm*c^2)=hp/(mm*c)=Lamm              (7.3)
% here
% Lamm - Compton wavelength of a meson

% Nuclear forces have a finite radius of action
% rc=Lamm=hp/(mm*c)                                 (7.4)
% rc=(1-2)Phi
syms hp c rc
mm=hp/(rc*c)
mm1=vpa(subs(mm,[hp rc c],[1.05e-34 1.5e-15 3e8]))
% 2.33e-28 kg
mm2=mm1/9.1e-31
% 256.0 me

% Muon
% 207 me

% pi-meson
% pion
% pi+ pi-
% mpi= 273 me 
% E0 = 140 MeV
% pi0
% mpi = 264 me
% E0 = 135 MeV

% p + n <-> n+pi+n <-> n + p                      (7.5)

% p + n -> p + n + pi0                            (7.6)

% phi(r)=-phi0*exp(-a*r)/r                        (7.7)
% where phi0 and a - const
% a = 1/rc = mm*c/hp