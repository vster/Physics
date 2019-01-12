% U0, a
% E>U0
% a) D-?
% b) Etr-?

% I area   - x<0
% II area  - 0<x<a
% III area - x>a

clear
syms x a hp m0 U0 E real
assume(hp>0)
U(x)=piecewise(0<x<a,U0,0)
% 0<E<U0

syms k1 k2 real
syms psi1(x) psi2(x) psi3(x)
eq1=diff(psi1,x,2)+k1^2*psi1
eq2=diff(psi2,x,2)+k2^2*psi2           
eq3=diff(psi3,x,2)+k1^2*psi3
% where k1=sqrt(2*m0*E/hp^2),
% k2=sqrt(2*m0*(E-U0)/hp^2)

psi1sol(x)=dsolve(eq1)
% C3*cos(k1*x) + C4*sin(k1*x)
psi2sol(x)=dsolve(eq2)
% C9*cos(k2*x) + C10*sin(k2*x)
psi3sol(x)=dsolve(eq3)
% C7*cos(k1*x) + C8*sin(k1*x)

syms A1 B1 A2 B2 A3 B3
psi1(x)=exp(k1*x*1i) + B1*exp(-k1*x*1i)
psi2(x)=A2*exp(k2*x*1i) + B2*exp(-k2*x*1i)
psi3(x)=A3*exp(k1*x*1i)

dpsi1(x)=diff(psi1(x),x)
% k1*exp(k1*x*1i)*1i - B1*k1*exp(-k1*x*1i)*1i
dpsi2(x)=diff(psi2(x),x)
% A2*k2*exp(k2*x*1i)*1i - B2*k2*exp(-k2*x*1i)*1i
dpsi3(x)=diff(psi3(x),x)
% A3*k1*exp(k1*x*1i)*1i

eq4=psi1(0)-psi2(0)
% B1 - A2 - B2 + 1
eq5=dpsi1(0)-dpsi2(0)
% k1*1i - A2*k2*1i - B1*k1*1i + B2*k2*1i
eq6=psi2(a)-psi3(a)
% A2*exp(a*k2*1i) - A3*exp(a*k1*1i) + B2*exp(-a*k2*1i)
eq7=dpsi2(a)-dpsi3(a)
% - A3*k1*exp(a*k1*1i)*1i + A2*k2*exp(a*k2*1i)*1i - B2*k2*exp(-a*k2*1i)*1i

[B1 A2 B2 A3]=solve([eq4,eq5,eq6,eq7],[B1 A2 B2 A3])
% A3=(4*k1*k2*exp(-a*k1*1i))/(k1^2*exp(-a*k2*1i) - k1^2*exp(a*k2*1i) + k2^2*exp(-a*k2*1i) - k2^2*exp(a*k2*1i) + 2*k1*k2*exp(-a*k2*1i) + 2*k1*k2*exp(a*k2*1i))
A31=A3

syms psi(x)
j=i*hp/(2*m0)*(psi(x)*diff(psi(x),x)'-psi(x)'*diff(psi(x),x)) 

jpad=subs(j,psi(x),exp(k1*x*1i))
% (hp*k1)/m0
syms A3
jpr=subs(j,psi(x),A3*exp(k1*x*1i))
% (A3*hp*k1*conj(A3))/m0
D=abs(jpr/jpad)
% abs(A3*conj(A3))=abs(A3)^2
D=abs(A31)^2
% (16*k1^2*k2^2)/abs(2*k1*k2 - k1^2*exp(a*k2*2i) - k2^2*exp(a*k2*2i) + k1^2 + k2^2 + 2*k1*k2*exp(a*k2*2i))^2
D=subs(D,[k1 k2],[sqrt(2*m0*E/hp^2) sqrt(2*m0*(E-U0)/hp^2)])
D=simplify(D)
% (16*exp((2^(1/2)*a*abs(m0*(E - U0))^(1/2)*(sign(m0*(E - U0)) - 1))/hp)*abs(E*m0)*abs(m0*(E - U0)))/abs(2*E*m0 - U0*m0 + 2*(E*m0)^(1/2)*(m0*(E - U0))^(1/2) + 2*exp((2^(1/2)*a*(m0*(E - U0))^(1/2)*2i)/hp)*(E*m0)^(1/2)*(m0*(E - U0))^(1/2) - 2*E*m0*exp((2^(1/2)*a*(m0*(E - U0))^(1/2)*2i)/hp) + U0*m0*exp((2^(1/2)*a*(m0*(E - U0))^(1/2)*2i)/hp))^2
D=(1+U0^2*sin(k2*a)^2/(4*E*(E-U0)))^(-1)
% 1/((U0^2*sin(a*k2)^2)/(4*E*(E - U0)) + 1)
% D=1 if sin(k2*a)=0

syms n integer
eq8=sqrt(2*m0*(E-U0)/hp^2)*a==pi*n
E=solve(eq8,E)
% (U0*m0 + (hp^2*n^2*pi^2)/(2*a^2))/m0
E=expand(E)
% U0 + (hp^2*n^2*pi^2)/(2*a^2*m0)

% So, D=1 and R=0 and E>U0
% E=U0 + (hp^2*n^2*pi^2)/(2*a^2*m0)

% If E=U0, then
% D=(1+m0*a^2*U0/(2*hp^2))^(-1)
