% Electron gas in metals
clear
syms m0 hp V E real
assume(m0>0)
syms pi
g(E)=(sqrt(2)*m0^(3/2)/(pi^2*hp^3))*V*sqrt(E)           % (6.51)
% dN=g(E)*<n>FD*dE                                        (6.52)
% N=int(0:inf)g(E)*<n>FD*dE                               (6.53)

syms EF k T dE real
dn=(sqrt(2)*m0^(3/2)/(pi^2*hp^3))*sqrt(E)*1/(exp((E-EF)/(k*T))+1)*dE %(6.54)
n=int(dn/dE,E,0,inf)
% int((2^(1/2)*E^(1/2)*m0^(3/2))/
%          /(hp^3*pi^2*(exp(-(EF - E)/(T*k)) + 1)), E, 0, Inf)   (6.55)

F(E)=dn/dE
% F(E)=(2^(1/2)*E^(1/2)*m0^(3/2))/
%     /(hp^3*pi^2*(exp(-(EF - E)/(T*k)) + 1))                    (6.56)
% This function is called the energy 
% distribution function of free electrons.

syms EF0
assume(EF0>0)
F(E)=piecewise(E<EF0 == E,(2^(1/2)*E^(1/2)*m0^(3/2))/(hp^3*pi^2),0)
pretty(F(E))                                              % (6.57)

dn=piecewise(E >EF0, 0, E<EF0, (2^(1/2)*E^(1/2)*m0^(3/2))/(hp^3*pi^2)*dE)
% piecewise(EF0 < E, 0, 
%     E < EF0, (2^(1/2)*E^(1/2)*dE*m0^(3/2))/(2*hp^3*pi^2))       (6.58)

% <f>=int(0:inf)f(E)*F(E)*dE/int(0:inf)F(E)*dE            (6.59)
% <f>=1/n*int(0:inf)f(E)*F(E)*dE

n1=int(dn/dE,E,0,EF0)
% (2*2^(1/2)*EF0^(3/2)*m0^(3/2))/(3*hp^3*pi^2)
syms n
eq1=(n==n1)
EF0sol=solve(eq1,EF0)
EF0=simplify(EF0sol(1))
% (3^(2/3)*pi^(4/3)*(hp^3*n)^(2/3))/(2*m0)
EF0=(hp^2/(2*m0))*(3*pi^2*n)^(2/3)                      % (6.60)
% This is Fermi energy

digits(3)
EF01=vpa(subs(EF0,[hp m0 n],[1.05e-34 9.1e-31 5e28]))
% 7.87e-19 J
EF01/1.6e-19
% 5 eV

% Fermi temperature
% k*TF=EF0 or TF=EF0/k
TF=EF0/k
TF1=subs(TF,[EF0 k],[EF01 1.38e-23])
% 5.7e4 ~ 60000 K

syms EF k T dE real
dn=(sqrt(2)*m0^(3/2)/(pi^2*hp^3))*sqrt(E)*1/(exp((E-EF)/(k*T))+1)*dE 
n=int(dn/dE,E,0,inf)
% int((2^(1/2)*E^(1/2)*m0^(3/2))/(hp^3*pi^2*(exp(-(EF - E)/(T*k)) + 1)), E, 0, Inf)
% Assume k*T<<EF then
EF=EF0*(1-pi^2/12*(k*T/EF0)^2)                     % (6.63)
F(E)=dn/dE
% (2^(1/2)*E^(1/2)*m0^(3/2))/(hp^3*pi^2*(exp(-(EF - E)/(T*k)) + 1))
syms p dp real
assume(p>0)
E1=p^2/(2*m0)
dE1=diff(E1,p)*dp
dnp=simplify(subs(dn,[E dE],[E1 dE1]))
% (dp*p^2)/(hp^3*pi^2*(exp(-(- p^2 + 2*EF*m0)/(2*T*k*m0)) + 1))   (6.64)
pretty(dnp)
F(p)=dnp/dp
% p^2/(hp^3*pi^2*(exp(-(- p^2 + 2*EF*m0)/(2*T*k*m0)) + 1))

syms v dv real
assume(v>0)
E2=m0*v^2/2
dE2=diff(E2,v)*dv
dnv=simplify(subs(dn,[E dE],[E2 dE2]))
% (dv*m0^3*v^2)/(hp^3*pi^2*(exp(-(EF - (m0*v^2)/2)/(T*k)) + 1))   (6.65)
pretty(dnv)
F(v)=dnv/dv
% (m0^3*v^2)/(hp^3*pi^2*(exp(-(EF - (m0*v^2)/2)/(T*k)) + 1))
