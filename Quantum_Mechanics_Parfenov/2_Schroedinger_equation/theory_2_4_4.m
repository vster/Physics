% One-dimensional potential pit of finite depth.

syms x a V0 m hp E
syms psi(x)
V(x)=piecewise(-a<=x<=a,-V0,0)
% E<0

% Area x<-a
% k=sqrt(-2*m*E)/hp
syms k real
assume(k>0)
eq1=diff(psi,x,2)-k^2*psi
psiSol=dsolve(eq1)
% C3*exp(-k*x) + C4*exp(k*x)
syms A B
psi=A*exp(-k*x)+B*exp(k*x)
% If x->-inf then A*exp(-k*x)->inf => A=0, then
% for x<-a
psi(x)=B*exp(k*x)

% Area -a<x<a, where V(x)=-V0
syms l x real
syms psi(x)
assume(l>0)
eq2=diff(psi,x,2)+l^2*psi
% where l=sqrt(2*m*(E+V0))/hp
% -U0<E<0
psiSol=dsolve(eq2)
% C7*cos(l*x) + C8*sin(l*x)
syms C D
psi(x)=C*sin(l*x)+D*cos(l*x)                     % (2.22)
% for -a<x<a
% psi(x) must be odd (D=0) or even (C=0)
% Put phi(x) is even => C=0
psi(x)=D*cos(l*x)

% Area x>a
syms E F
psi(x)=E*exp(k*x)+F*exp(-k*x)
% If x->inf then E*exp(k*x)->inf => E=0
psi(x)=F*exp(-k*x)
%     / F*exp(-k*x), for x>a
% psi=| D*cos(l*x),  for 0<x<a
%     \ psi(-x),     for x<0
psi(x)=piecewise(x<-a,B*exp(k*x),-a<x<a,D*cos(l*x),x>a,F*exp(-k*x))

% From the continuity condition of psi(x) follows
% at point x=a
% F*exp(-k*a)=D*cos(l*a)
% From the continuity condition of d_psi/dx follows
% -k*F*exp(-ka)=-l*D*cos(l*a)
% Then k=tan(l*a)                                  (2.23)
% k and l are function of E
% We introduce new notation
% z=l*a, z0=a/hp*sqrt(2*m*V0)
% As (k^2+l^2)=2*m*V0/hp^2, so k*a=sqrt(z0^2-z^2)
% (2.23) => tan(z)=sqrt((z0/z)^2-1)     (2.24)

% Consider two cases.
% 1. Wide, deep pit
% If z0 is very big, then at even n
% En+V0~n^2*pi^2*hp^2/(2*m*(2*a)^2)

% 2. Shallow narrow pit
% While decreasing z0, in the pit is formed fewer states
% and at z0<pi/2 remain only one level
% Transmittance T=|F|^2/|A|^2
T_1=1+V0^2/(4*E*(E+V0))*sin(2*a/hp*sqrt(2*m*(E+V0))^2)
% The pit becomes "transparent" when T=1, that is when
% 2*a/hp*sqrt(2*m*(E+V0))=n*hp
% En+V0=n^2*pi^2*hp^2/(2*m*(2*a)^2)
