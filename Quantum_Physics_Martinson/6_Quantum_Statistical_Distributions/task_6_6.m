% T=0
% EF0=5.51 eV
clear
% <E>=int(0:inf)E*F(E)*dE/int(0:inf)F(E)*dE
syms E m0 hp EF0 real 
syms pi
FE=(2^(1/2)*E^(1/2)*m0^(3/2))/(hp^3*pi^2)
Em=int(E*FE,E,0,EF0)/int(FE,E,0,EF0)
% (3*EF0)/5
% Emcl=3/2*k*T
% Em=Emcl => (3*EF0)/5=3/2*k*T
syms k T real
eq1=(3*EF0)/5==3/2*k*T
T=solve(eq1,T)
% (2*EF0)/(5*k)
digits(3)
T1=vpa(subs(T,[EF0 k],[5.51*1.6e-19 1.38e-23]))
% 2.56e4 K