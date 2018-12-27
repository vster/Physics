% One-dimensional potential pit of infinite depth
clear
syms t x a E m hp real
syms psi(x)
U(x)=piecewise(0<x<a,0,inf)
% Psi(x,t)=psi(x)*exp(-i*E*t/hp)
% d2psi/dx2+k^2*psi=0
% where
% k=sqrt(2*m*E)/hp
% Solution
% psi(x)=A*cos(k*x)+B*sin(k*x)
syms A B k
psi(x)=A*cos(k*x)+B*sin(k*x)
% Border conditions
% psi(0)=0, psi(a)=0
% then
% / psi(0)=A*cos(k*0)+B*sin(k*a)=0
% \ psi(a)=A*cos(k*a)+B*sin(k*a)=0

% / A=0
% \ B*sin(k*a)=0
% k*a=pi*n, where n is any integer except zero
% So
% psi(n)=B*sin(pi*n*x/a)                 (2.16)
syms n
assume(n>0)
psi(n)=B*sin(pi*n*x/a)

In=int(psi'*psi,x,0,a)
% (a*abs(B)^2*(n*sin((pi*abs(n)^2)/n)*cos(pi*n) - (cos((pi*abs(n)^2)/n)*sin(pi*n)*abs(n)^2)/n))/(pi*(abs(n)^4/n^2 - n^2))
In=simplify(subs(In,sin(pi*n),0))
% -(a*abs(B)^2*(sin(2*pi*n) - 2*pi*n))/(4*n*pi)
In=simplify(subs(In,sin(2*pi*n),0))
% (a*abs(B)^2)/2 = 1 => 
% B=sqrt(2/a) => psi(n)=sqrt(2/a)*sin(pi*n*x/a)
% k=sqrt(2*m*E)/hp => 
% E(n)=hp^2*k^2/(2*m)
% k*a=pi*n => k=pi*n/a
E(n)=hp^2*k^2/(2*m)
E(n)=subs(E(n),k,pi*n/a)
% E(n)=(hp^2*n^2*pi^2)/(2*a^2*m)                (2.17)
pretty(E(n))