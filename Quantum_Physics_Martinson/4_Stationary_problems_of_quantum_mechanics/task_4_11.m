% <U>-?, <Ek>-?
% E1=3/2*hp*w0
clear
syms x0 x m0 w0 hp real
assume(x0>0)
syms pi
psi1(x)=1/sqrt(2*x0*sqrt(pi))*(2*x/x0)*exp(-x^2/(2*x0^2))
OpU=m0*w0^2*x^2/2
% OpE=OpP2/(2*m0)=-(hp^2/(2*m0))*d2/dx2
Um=int(psi1'*OpU*psi1,x,-inf,inf)
% (3*m0*w0^2*x0^2)/4
Um=subs(Um,x0,sqrt(hp/(m0*w0)))
% (3*hp*w0)/4 = E1/2

Ekm=int(psi1'*(-hp^2/(2*m0))*diff(psi1,x,2),x,-inf,inf)
% (3*hp^2)/(4*m0*x0^2)
Ekm=subs(Ekm,x0,sqrt(hp/(m0*w0)))
% (3*hp*w0)/4 = Um = E1/2