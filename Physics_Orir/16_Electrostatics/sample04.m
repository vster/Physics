% F=(-e)*E=-4*pi*k0*e*ro*x
% d2x/dt^2=

syms t k0 e ro me real
syms x(t)
eqn=diff(x)+(4*pi*k0*e*ro/me)*x
xsol=dsolve(eqn)
% C2*exp(-(4*pi*e*k0*ro*t)/me)
% x=x0*cos(w*t)
% w=sqrt(4*pi*k0*e*ro/me)

