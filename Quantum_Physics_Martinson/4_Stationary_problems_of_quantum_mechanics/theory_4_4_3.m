% Rectangular potential pit of finite depth

clear
syms x a hp m0 U0 E real
assume(hp>0)
U(x)=piecewise(x<0,U0,0<x<a,0,x>a,U0)
% Area I, x<0
% Area II, 0<x<a
% Area III, x>a
% E<U0

% For Areas I and III
syms k1 k2 real
syms psi1(x) psi2(x) psi3(x)
eq1=diff(psi1,x,2)-2*m0*(U0-E)*psi1/hp^2
k11=sqrt(2*m0*(U0-E)/hp^2)
eq1=diff(psi1,x,2)-k1^2*psi1
psi1(x)=dsolve(eq1)
% C5*exp(-k1*x) + C6*exp(k1*x)
syms A1 B1 A3 B3
psi1(x)=A1*exp(k1*x)+B1*exp(-k1*x)    % x<0
psi3(x)=A3*exp(k1*x)+B3*exp(-k1*x)    % x>a
% So that the wave function is limited
% B1=0 and A3=0, so
psi1(x)=A1*exp(k1*x)
psi3(x)=B3*exp(-k1*x)

% Area II
eq2=diff(psi2,x,2)+(2*m0/hp^2)*E*psi2
k21=sqrt(2*m0*E/hp^2)
eq2=diff(psi2,x,2)+k2^2*psi2
psi2(x)=dsolve(eq2)
% C3*cos(k2*x) + C4*sin(k2*x)
syms C alfa
psi2(x)=C*sin(k2*x+alfa)

psi1(x)=A1*exp(k1*x)   % x<0
psi2(x)=C*sin(k2*x+alfa)  % 0<x<a                  (4.69)
psi3(x)=B3*exp(-k1*x)  % x>a

dpsi1(x)=diff(psi1(x),x)
% A1*k1*exp(k1*x)
dpsi2(x)=diff(psi2(x),x)
% C*k2*cos(alfa + k2*x)
dpsi3(x)=diff(psi3(x),x)
% -B3*k1*exp(-k1*x)

eq4=psi1(0)-psi2(0)
eq5=psi2(a)-psi3(a)
eq6=dpsi1(0)-dpsi2(0)
eq7=dpsi2(a)-dpsi3(a)

eq8=tan(alfa)-k2/k1
eq9=tan(k2*a+alfa)+k2/k1
[alfa a]=solve([eq8 eq9],[alfa a])
% alfa=atan(k2/k1)
% a=-(2*atan(k2/k1))/k2

alfa=subs(alfa,[k1 k2],[k11 k21])
pretty(alfa)

a=subs(a,[k1 k2],[k11 k21])
pretty(a)


