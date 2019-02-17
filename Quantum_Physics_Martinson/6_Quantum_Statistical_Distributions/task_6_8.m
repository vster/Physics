% T=0
% EF0=5.51 eV

% F(E)=(2^(1/2)*E^(1/2)*m0^(3/2))/
%     /(hp^3*pi^2*(exp(-(EF - E)/(T*k)) + 1))                    (6.56)
% dnv=(dv*m0^3*v^2)/(hp^3*pi^2*(exp(-(EF - (m0*v^2)/2)/(T*k)) + 1)) (6.65)
clear
syms E m0 real
v(E)=sqrt(2/m0)*sqrt(E)

% <f>=int(0:inf)f(E)*F(E)*dE/int(0:inf)F(E)*dE            (6.59)
syms f(E) F(E)
fm=int(f(E)*F(E),E,0,inf)/int(F(E),E,0,inf)
vm=int(sqrt(2/m0)*sqrt(E)*F(E),E,0,inf)/int(F(E),E,0,inf)

syms m0 hp EF0 real
syms pi
FE=(2^(1/2)*E^(1/2)*m0^(3/2))/(hp^3*pi^2)
vm=int(sqrt(2/m0)*sqrt(E)*FE,E,0,EF0)/int(FE,E,0,EF0)
% (3*2^(1/2)*EF0^(1/2)*(1/m0)^(1/2))/4
pretty(vm)
% vF=sqrt(2*EF0/m0) - Fermi speed
% syms vF
% vm=3/4*vF
digits(3)
vm1=vpa(subs(vm,[EF0 m0],[5.51*1.6e-19 9.1e-31]))
% 1.04e6 m/s

syms v F(v)
vm=int(v*F(v),v,0,inf)/int(F(v),v,0,inf)
% int(v*F(v), v, 0, Inf)/int(F(v), v, 0, Inf)
% where
syms vF
assume(vF>0)
Fv=piecewise(v<vF,m0^3*v^2/(pi^2*hp^3),0)
vm=int(v*Fv,v,0,vF)/int(Fv,v,0,vF)
% (3*vF)/4