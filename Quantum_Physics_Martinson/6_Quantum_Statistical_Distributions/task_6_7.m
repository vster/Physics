% EF=2.14 eV
% ro=862 kg/m^3

% k*T<<EF0
% EF~EF0
clear
syms hp m0 n real
syms pi
EF=(hp^2/(2*m0))*(3*pi^2*n)^(2/3)

% find na
% relative atomic mass of potassium
% Ar=39.1
% molar mass
% M=0.001*Ar=0.0391 kg/mol
% Moles per unit volume of matter
% nu=ro/M
% the number of particles in one mole is Avogadro constant NA
% then potassium atom concentration
% na=ro*NA/M
% and free electron concentration
syms eta ro NA M
n1=eta*ro*NA/M
EF=subs(EF,n,n1)
% (hp^2*((3*NA*eta*ro*pi^2)/M)^(2/3))/(2*m0)
syms EF
eq1=EF==(hp^2*((3*NA*eta*ro*pi^2)/M)^(2/3))/(2*m0)
eta=solve(eq1,eta)
% (M*((2*EF*m0)/hp^2)^(3/2))/(3*NA*ro*pi^2)
digits(3)
eta1=vpa(subs(eta,[M EF m0 hp NA ro],...
       [0.0391 2.14*1.6e-19 9.1e-31 1.05e-34 6.02e23 862]))
% 1.08 free_electorns/atom