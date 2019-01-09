% Particle motion in the potential threshold and potential barrier areas

% Particle motion in the potential threshold region
clear
syms x hp m0 U0 E real
assume(hp>0)
U(x)=piecewise(x<0,0,U0)

syms psi1(x) psi2(x)
% x<0 - area I
eq1=diff(psi1,x,2)+2*m0/hp^2*E*psi1
% x>0 - area II
eq2=diff(psi2,x,2)+2*m0/hp^2*(E-U0)*psi2

k1=sqrt(2*m0*E/hp^2)                     % (4.29)
k2=sqrt((2*m0/hp^2)*(U0-E))

syms k1 k2
eq3=diff(psi1,x,2)+k1^2*psi1             % (4.30a)
eq4=diff(psi2,x,2)-k2^2*psi2             % (4.30b)

psi1sol=dsolve(eq3)
% C4*exp(k1*x*1i) + C5*exp(-k1*x*1i)
psi2sol=dsolve(eq4)
% C6*exp(-k2*x) + C7*exp(k2*x)

syms A1 B1 A2 B2
psi1(x)=A1*exp(i*k1*x)+B1*exp(-i*k1*x)         % (4.31a)
psi2(x)=A2*exp(k2*x)+B2*exp(-k2*x)             % (4.31b)

dpsi1=diff(psi1,x)
% A1*k1*exp(k1*x*1i)*1i - B1*k1*exp(-k1*x*1i)*1i
dpsi2=diff(psi2,x)
% A2*k2*exp(k2*x) - B2*k2*exp(-k2*x)

% / psi1(0)=psi2(0)
% \ psi1'(0)=psi2'(0)
% or
% / A1+B1=B2                                   % (4.32)
% \ i*A1*k1-i*B1*k1=-B2*k2

% Put A1=1, then
eq5=1+B1==B2                                   % (4.32)
eq6=i*k1-i*B1*k1==-B2*k2

[B11 B22]=solve([eq5,eq6],[B1 B2])

B11=(k2 + k1*1i)/(k1*1i - k2)                %  (4.33)
B22=(k1*2i)/(k1*1i - k2)

B11=(k2 + k1*1i)*i/((k1*1i - k2)*i)
B22=(k1*2i)*i/((k1*1i - k2)*i)

syms B1 B2
psi1(x)=subs(psi1,[A1 B1],[1 B11])
% exp(k1*x*1i) + (exp(-k1*x*1i)*(k1 - k2*1i))/(k1 + k2*1i)
psi2(x)=subs(psi2,[A2 B2],[0 B22])
% (2*k1*exp(-k2*x))/(k1 + k2*1i)

% R=|jotr|/|jpad|                           (4.35)
% j=i*hp/(2*m0)*(psi*grad(psi')-psi'*grad(psi))
psipad=exp(k1*x*1i)
jpad=i*hp/(2*m0)*(psipad*diff(psipad',x)-psipad'*diff(psipad,x))
% (hp*k1)/m0

psiotr=(exp(-k1*x*1i)*(k1 - k2*1i))/(k1 + k2*1i)
jotr=i*hp/(2*m0)*(psiotr*diff(psiotr',x)-psiotr'*diff(psiotr,x))
% -(hp*k1)/m0

psipr=(2*k1*exp(-k2*x))/(k1 + k2*1i)
jpr=i*hp/(2*m0)*(psipr*diff(psipr',x)-psipr'*diff(psipr,x))
% 0

R=abs(jotr/jpad)
% 1

D=abs(jpr/jpad)
% 0

% w2(x)=dP/dt
w2(x)=simplify(psi2(x)^2)
% (4*k1^2*exp(-2*k2*x))/(k1 + k2*1i)^2
w22=subs(w2,[k1 k2],[sqrt(2*m0*E/hp^2) sqrt((2*m0/hp^2)*(U0-E))])
w22=simplify(w22)

syms DUE
digits(3)
exp_term=exp(-(2*2^(1/2)*x*(m0*DUE)^(1/2))/hp)
exp_term1=vpa(subs(exp_term,[x m0 DUE hp],[1e-10 9.1e-31 1.6e-19 1.05e-34]))
% 0.358
exp_term2=vpa(subs(exp_term,[x m0 DUE hp],[1e-9 9.1e-31 1.6e-19 1.05e-34]))
% 3.44e-5