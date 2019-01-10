clear
syms x hp m0 U0 E real
assume(hp>0)
U(x)=piecewise(x<0,0,U0)
% E>U0
syms k1 k2
syms psi1(x) psi2(x)
eq1=diff(psi1,x,2)+k1^2*psi1            % (4.38a)
eq2=diff(psi2,x,2)+k2^2*psi2            % (4.38b)

% k1=sqrt(2*m0*E/hp^2)                  (4.39)
% k2=sqrt((2*m0/hp^2*(E-U0)

psi1sol=dsolve(eq1)
% C4*cos(k1*x) + C5*sin(k1*x)
psi2sol=dsolve(eq2)
% C8*cos(k2*x) + C9*sin(k2*x)

syms A1 B1 A2 B2
psi1(x)=A1*exp(i*k1*x)+B1*exp(-i*k1*x)  % x<0    (4.40a)
psi2(x)=A2*exp(i*k2*x)+B2*exp(-i*k2*x)  % x>0    (4.40b)
% There is no reflected wave in area II, so B2=0

% The condition of wave functions and their derivatives
% Put A1=1
eq3=1+B1-A2                                     % (4.41)
eq4=k1-k1*B1-k2*A2

[B1 A2]=solve([eq3,eq4],[B1 A2])
% B1=(k1 - k2)/(k1 + k2)
% A2=(2*k1)/(k1 + k2)

syms A1 B1 A2 B2
psi1(x)=subs(psi1(x),[A1, B1],[1, (k1-k2)/(k1+k2)])
psi2(x)=subs(psi2(x),[A2, B2],[(2*k1)/(k1+k2), 0])

psi1(x)=exp(k1*x*1i) + (exp(-k1*x*1i)*(k1 - k2))/(k1 + k2)   % (4.42)
psi2(x)=(2*k1*exp(k2*x*1i))/(k1 + k2)

syms psi(x)
j=i*hp/(2*m0)*(psi(x)*diff(psi(x)',x)-psi(x)'*diff(psi(x),x))           % (4.36)

jpad=subs(j,psi(x),exp(k1*x*1i))
% (hp*k1)/m0
jotr=subs(j,psi(x),(exp(-k1*x*1i)*(k1-k2))/(k1+k2))
% -(hp*k1*(k1 - k2)^2)/(m0*(k1 + k2)^2)
jpr=subs(j,psi(x),(2*k1*exp(k2*x*1i))/(k1+k2))
% (4*hp*k1^2*k2)/(m0*(k1 + k2)^2)

R=abs(jotr/jpad)
% (k1 - k2)^2/(k1 + k2)^2
R=simplify(subs(R,[k1 k2],[sqrt(2*m0*E/hp^2) sqrt(2*m0/hp^2*(E-U0))]))
pretty(R)
R=((1-sqrt(1-U0/E))/(1+sqrt(1-U0/E)))^2                      % (4.44)   
pretty(R)

D=abs(jpr/jpad)
% (4*abs(k1*k2))/(k1 + k2)^2
D=simplify(subs(D,[k1 k2],[sqrt(2*m0*E/hp^2) sqrt(2*m0/hp^2*(E-U0))]))
pretty(D)
D=4*sqrt(1-U0/E)/(1+sqrt(1-U0/E))^2                          % (4.45)
pretty(D)

T=simplify(R+D)

% n=lamB1/lamB2
syms v1 v2 m
n=v2/v1
n=subs(n,[v1 v2],[sqrt(2*E/m) sqrt(2*(E-U0)/m)])
n=simplify(n)
% ((E - U0)/m)^(1/2)/(E/m)^(1/2)
n=sqrt(1-U0/E)