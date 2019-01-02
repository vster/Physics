% F=(-e)*E=-4*pi*k0*e*ro*x
% d2x/dt^2=
clear
syms t k0 e ro me real
syms x(t)
eqn=diff(x)+(4*pi*k0*e*ro/me)*x
xsol=dsolve(eqn)
% C2*exp(-(4*pi*e*k0*ro*t)/me)
% x=x0*cos(w*t)
w=sqrt(4*pi*k0*e*ro/me)
% 2*pi^(1/2)*((e*k0*ro)/me)^(1/2)

syms kg m s C
w_si=subs(w,[k0 e ro me],[kg*m^3/(s^2*C^2) C C/m^3 kg])
% 2*pi^(1/2)*(1/s^2)^(1/2) ~ 1/s ~ Hz
