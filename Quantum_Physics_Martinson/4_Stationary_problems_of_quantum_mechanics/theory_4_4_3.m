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
% k1=sqrt(2*m0*U0-E)/hp^2)
eq1=diff(psi1,x,2)-k1^2*psi1
psi1(x)=dsolve(eq1)
% C5*exp(-k1*x) + C6*exp(k1*x)
syms A B1 A3 B3
psi1(x)=A1*exp(k1*x)+B1*exp(-k1*x)    % x<0
psi3(x)=A3*exp(k1*x)+B3*exp(-k1*x)    % x>a
% So that the wave function is limited
% B1=0 and A3=0, so
psi1(x)=A1*exp(k1*x)
psi3(x)=B3*exp(-k1*x)
%...
% to be continued!

