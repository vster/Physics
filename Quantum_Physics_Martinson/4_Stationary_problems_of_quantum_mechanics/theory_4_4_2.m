% Potential well of finite depth

% One-dimensional potential pit with one infinitely high wall

clear
syms x a hp m0 U0 E real
assume(hp>0)
U(x)=piecewise(x<0,inf,0<x<a,0,x>a,U0)
% Area I, 0<x<a
% Area II, x>a
% E>U0

syms k1 k2 real
syms psi1(x) psi2(x)
eq1=diff(psi1,x,2)+k1^2*psi1              % (4.65a)
eq2=diff(psi2,x,2)+k2^2*psi2              % (4.65b)
% where 
% k1=sqrt(2*m0*E/hp^2)
% k2=sqrt(2*m0(E-U0)/hp^2)

psi1(x)=dsolve(eq1)
% C1*cos(k1*x) + C2*sin(k1*x)
psi2(x)=dsolve(eq2)
% C3*cos(k2*x) + C4*sin(k2*x)

syms A B C
psi1(x)=A*sin(k1*x)
psi1(x)=(A/(2*i))*(exp(i*k1*x)-exp(-i*k1*x))          % (4.66)
psi2(x)=B*exp(i*k2*x)-C*exp(-i*k2*x)                  % (4.67)

dpsi1(x)=diff(psi1,x)
% -(A*(k1*exp(-k1*x*1i)*1i + k1*exp(k1*x*1i)*1i)*1i)/2
dpsi2(x)=diff(psi2,x)
% B*k2*exp(k2*x*1i)*1i + C*k2*exp(-k2*x*1i)*1i

eq3=psi1(a)-psi2(a)
% - B*exp(a*k2*1i) + C*exp(-a*k2*1i) + (A*(exp(-a*k1*1i) - exp(a*k1*1i))*1i)/2
eq4=dpsi1(a)-dpsi2(a)
% - (A*(k1*exp(-a*k1*1i)*1i + k1*exp(a*k1*1i)*1i)*1i)/2 - B*k2*exp(a*k2*1i)*1i - C*k2*exp(-a*k2*1i)*1i

[Bsol,Csol]=solve([eq3,eq4],[B,C])
% -(exp(-a*k2*1i)*(A*k1*exp(-a*k1*1i) + A*k1*exp(a*k1*1i) - A*k2*exp(-a*k1*1i) + A*k2*exp(a*k1*1i))*1i)/(4*k2)
% -(exp(a*k2*1i)*(A*k1*exp(-a*k1*1i) + A*k1*exp(a*k1*1i) + A*k2*exp(-a*k1*1i) - A*k2*exp(a*k1*1i))*1i)/(4*k2)

B=simplify(Bsol)
% -(A*exp(-a*(k1*1i + k2*1i))*(k1 - k2 + k1*exp(a*k1*2i) + k2*exp(a*k1*2i))*1i)/(4*k2)
C=simplify(Csol)
% -(A*exp(-a*k1*1i)*exp(a*k2*1i)*(k1 + k2 + k1*exp(a*k1*2i) - k2*exp(a*k1*2i))*1i)/(4*k2)