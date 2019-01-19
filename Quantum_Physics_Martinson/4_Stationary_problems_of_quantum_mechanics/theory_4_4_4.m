clear
syms x a hp m0 U0 E real
assume(hp>0)
U(x)=piecewise(x<0,U0,0<x<a,0,x>a,U0)
% Area I, x<0
% Area II, 0<x<a
% Area III, x>a
% E>U0

syms psi1(x) psi2(x) psi3(x)
eq1=diff(psi1,x,2)+2*m0*(U0-E)*psi1/hp^2
eq2=diff(psi2,x,2)+2*m0*E*psi2/hp^2
eq3=diff(psi3,x,2)+2*m0*(U0-E)*psi3/hp^2

k11=sqrt(2*m0*(E-U0)/hp^2)
k21=sqrt(2*m0*E/hp^2)
syms k1 k2 real
eq1=diff(psi1,x,2)+k1^2*psi1
eq2=diff(psi2,x,2)+k2^2*psi2
eq3=diff(psi3,x,2)+k1^2*psi3

psi1(x)=dsolve(eq1)
% C5*cos(k1*x) + C6*sin(k1*x)
psi2(x)=dsolve(eq2)
% C3*cos(k2*x) + C4*sin(k2*x)
psi3(x)=dsolve(eq3)
% C7*cos(k1*x) + C8*sin(k1*x)

syms A1 B1 A2 B2 A3 B3
psi1(x)=A1*exp(i*k1*x)+B1*exp(-i*k1*x)
psi2(x)=A2*exp(i*k2*x)+B2*exp(-i*k2*x)
psi3(x)=A3*exp(i*k1*x)+B3*exp(-i*k1*x)
% Put here B3=0, A1=1, then
psi1(x)=exp(i*k1*x)+B1*exp(-i*k1*x)
psi2(x)=A2*exp(i*k2*x)+B2*exp(-i*k2*x)
psi3(x)=A3*exp(i*k1*x)

dpsi1(x)=diff(psi1(x),x)
% k1*exp(k1*x*1i)*1i - B1*k1*exp(-k1*x*1i)*1i
dpsi2(x)=diff(psi2(x),x)
% A2*k2*exp(k2*x*1i)*1i - B2*k2*exp(-k2*x*1i)*1i
dpsi3(x)=diff(psi3(x),x)
% A3*k1*exp(k1*x*1i)*1i

eq4=psi1(0)-psi2(0)
% B1 - A2 - B2 + 1
eq5=psi2(a)-psi3(a)
% A2*exp(a*k2*1i) - A3*exp(a*k1*1i) + B2*exp(-a*k2*1i)
eq6=dpsi1(0)-dpsi2(0)
% k1*1i - A2*k2*1i - B1*k1*1i + B2*k2*1i
eq7=dpsi2(a)-dpsi3(a)
% - A3*k1*exp(a*k1*1i)*1i + A2*k2*exp(a*k2*1i)*1i - B2*k2*exp(-a*k2*1i)*1i

[B1 A2 B2 A3]=solve([eq4 eq5 eq6 eq7],[B1 A2 B2 A3])
% A3
% (4*k1*k2*exp(-a*k1*1i))/(k1^2*exp(-a*k2*1i) - k1^2*exp(a*k2*1i) + k2^2*exp(-a*k2*1i) - k2^2*exp(a*k2*1i) + 2*k1*k2*exp(-a*k2*1i) + 2*k1*k2*exp(a*k2*1i))
A31=simplify(A3)
pretty(A3)

syms psi(x)
j=i*hp/(2*m0)*(psi(x)*diff(psi(x)',x)-psi(x)'*diff(psi(x),x))           % (4.36)

syms k1 k2 A3
jpad=simplify(subs(j,psi(x),exp(k1*x*1i)))
% (hp*k1)/m0
jpr=simplify(subs(j,psi(x),A3*exp(i*k1*x)))
% (hp*k1*abs(A3)^2)/m0

D=jpr/jpad
% abs(A3)^2
D=simplify(subs(D,A3,A31))
% (16*k1^2*k2^2)/abs(2*k1*k2 - k1^2*exp(a*k2*2i) - k2^2*exp(a*k2*2i) + k1^2 + k2^2 + 2*k1*k2*exp(a*k2*2i))^2
pretty(D)
D=simplify(subs(D,[k1 k2],[k11 k21]))
%...
D=(1+(U0^2*sin(k2*a)^2)/(4*E*(E-U0)))^(-1)            % (4.74)