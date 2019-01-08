% Particle in a potential well with impenetrable walls

% One-dimensional potential pit
clear
syms x a m0 hp E real
syms psi(x)
U(x)=piecewise(0<x<a,0,inf)

% d2psi/dx2+2*m0/hp^2*(E-U(x))psi=0
eq1=diff(psi,x,2)+(2*m0/hp^2)*(E-U(x))*psi==0         % (4.11)
% psi=x at x=0,x=a
eq1=diff(psi,x,2)+(2*m0/hp^2)*E*psi==0             % (4.12)
% 0<x<a
% cond=[psi(0)==0,psi(a)==0]
% k=sqrt(2*m0*E/hp^2)                           (4.13)
syms k n
eq1=diff(psi,x,2)+k^2*psi==0
psiSol=dsolve(eq1)
% C8*exp(k*x*1i) + C9*exp(-k*x*1i)
% psi(x)=A*sin(k*x)+B*cos(k*x)                  (4.14)
% psi(0)=0 => B=0
% psi(x)=A*sin(k*x)
% psi(a)=0 => A*sin(k*a)=0
% k*a=pi*n,  n=1,2,3...                         (4.15)
% (4.13) => 
E(n)=k^2*hp^2/(2*m0)
E(n)=subs(E(n),k,pi*n/a)
% (hp^2*n^2*pi^2)/(2*a^2*m0)   ,n=1,2,3...      (4.16)

dEn=simplify(E(n+1)-E(n))
% dE(n)=(hp^2*pi^2*(2*n + 1))/(2*a^2*m0)

% Case 1
digits(3)
dEn1=vpa(subs(dEn,[hp a m0],[1.05e-34 0.1 1e-27]))
dEn1/1.6e-19
% 6.8e-20*n + 3.4e-20 eV

% Case 2
dEn2=vpa(subs(dEn,[hp a m0],[1.05e-34 0.01 0.9e-30]))
dEn2/1.6e-19
% 7.56e-15*n + 3.78e-15 eV

% Case 3
dEn3=vpa(subs(dEn,[hp a m0],[1.05e-34 1e-10 0.9e-30]))
dEn3/1.6e-19
% 75.6*n + 37.8 eV -???

dEn/E(n)
% (2*n + 1)/n^2