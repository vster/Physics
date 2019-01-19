% m0, U0, a, E=U0/2
% sin(k1*a)=+-sqrt(hp^2/(2*m0*a^2*U0))*k1*a               (4.63)
% % k1=sqrt(2*m0*E/hp^2)
clear
syms a hp m0 U0 k1 E real
assume(a>0)
assume(hp>0)
% a)
eq1=sin(k1*a)-sqrt(hp^2/(2*m0*a^2*U0))*k1*a
eq2=subs(eq1,k1,sqrt(2*m0*E/hp^2))
eq3=simplify(subs(eq2,E,U0/2))
pretty(eq3)
eq4=sin((a*(U0*m0)^(1/2))/hp)-sqrt(2)/2
% pi/2<arg_of_sin<pi
% (a*(U0*m0)^(1/2))/hp=3*pi/4
% U0*a^2=(9/16)*pi^2*hp^2/m0

% b)
syms A k1 x
syms pi
psi1(x)=A*sin(k1*x)
P=psi1(x)^2
% A^2*sin(k1*x)^2
DP=diff(P,x)
DP=simplify(DP)
% A^2*k1*sin(2*k1*x)=0
% 2*k1*x=pi*m
% k1*a<pi => m=1
xver=pi/(2*k1)
xver=subs(xver,k1,sqrt(2*m0*E/hp^2))
xver=simplify(subs(xver,E,U0/2))
% (pi*hp)/(2*(U0*m0)^(1/2))
xver=simplify(subs(xver,U0,(9/16)*pi^2*hp^2/(m0*a^2)))
% (2*a)/3

% c)
% P-? for x<a
syms A C k1 k2 x real
psi1(x)=A*sin(k1*x)
psi2(x)=C*exp(-k2*x)

k2=sqrt(2*m0*(U0-E)/hp^2)
k2=subs(k2,E,U0/2)
k2=simplify(subs(k2,U0,(9/16)*pi^2*hp^2/(m0*a^2)))
% (3*pi)/(4*a)
k1=sqrt(2*m0*E/hp^2)
k1=subs(k1,E,U0/2)
k1=simplify(subs(k1,U0,(9/16)*pi^2*hp^2/(m0*a^2)))
% (3*pi)/(4*a)

eq5=psi1(a)-psi2(a)
% A*sin(a*k1) - C*exp(-a*k2)
% A/C
syms a k1 k2
AC=exp(-a*k2)/sin(a*k1)
AC=subs(AC,[k1 k2],[(3*pi)/(4*a) (3*pi)/(4*a)])
% 2^(1/2)*exp(-(3*pi)/4)

psi1(x)=subs(psi1(x),k1,(3*pi)/(4*a))
% A*sin((3*pi*x)/(4*a))
psi2(x)=subs(psi2(x),k2,(3*pi)/(4*a))
% C*exp(-(3*pi*x)/(4*a))

P1=int(psi1^2,x,0,a)
% (A^2*a*(3*pi + 2))/(6*pi)
P2=int(psi2^2,x,a,inf)
% (2*C^2*a*exp(-(3*pi)/2))/(3*pi)

P1P2=P1/P2
% (A^2*exp((3*pi)/2)*(3*pi + 2))/(4*C^2)
P1P2=simplify(subs(P1P2,A,2^(1/2)*exp(-(3*pi)/4)*C))
% (3*pi)/2 + 1
% P1+P2=1
syms P2
eq6=(1-P2)/P2==(3*pi)/2 + 1
P2=solve(eq6,P2)
% 1/((3*pi)/2 + 2)
digits(3)
vpa(P2)
% 0.149