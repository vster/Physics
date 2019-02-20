% Schottky effect
clear
syms eps0 e x
Fiz=1/(4*pi*eps0)*e^2/(2*x)^2
% e^2/(16*eps0*x^2*pi)
Uiz=Fiz*x
% e^2/(16*eps0*x*pi)                      (6.69)

syms E U0
Fel=-e*E
Uel=U0-Fel*x
% U0 + E*e*x
U=Uiz+Uel
% e^2/(16*eps0*x*pi) + E*x*e + U0         (6.70)

dUx=diff(U,x)
% - e^2/(16*eps0*x^2*pi) + E*e
x0sol=solve(dUx==0,x)
x0=x0sol(2)
% (e/(4*E*eps0))^(1/2)/(2*pi^(1/2))
DAv=simplify(subs(U-U0,x,x0))
% e^2/(2*eps0*pi^(1/2)*(e/(E*eps0))^(1/2))
pretty(DAv)
DAv=e^(3/2)*E^(1/2)/(4*pi*eps0)^(1/2)

syms A T Av k T
js=A*T^2*exp(-(Av-DAv)/(k*T))
% A*T^2*exp(-(Av - (E^(1/2)*e^(3/2))/(4*eps0*pi)^(1/2))/(T*k))   (6.71)
js=A*T^2*exp(e^(3/2)*E^(1/2)/((4*pi*eps0)^(1/2)*k*T))*exp(-Av/(k*T))
% log(js)~E^(1/2)

% Cold emission of electrons from metal

syms hp x0 me x U(x) E
D=exp(-2/hp*int(sqrt(2*me*(U(x)-E)),x,0,x0))
U(x)=U0-e*E*x
syms EF m0
U(x)=EF+Av-e*E*x
D=exp(-2/hp*int(sqrt(2*me*(EF+Av-e*E*x-E)),x,0,x0))
D(E)=exp(-(4*sqrt(2*m0)/(3*e*hp)*(EF+Av-E)^(3/2)/E))

% E0=4*sqrt(2*m0)/(3*e*hp)*(Av-EF-E)^(3/2)
syms E0
D=exp(-E0/E)