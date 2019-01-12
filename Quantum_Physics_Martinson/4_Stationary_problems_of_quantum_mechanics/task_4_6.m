% m0, E<U0, U0-E=1 eV
% xef-?

% w(x)=(4*k1^2/(k1^2+k2^2)*exp(-2/hp*sqrt(2*m0*(U0-E)*x)        (4.37)
clear
syms k1 k2 hp m0 U0 E x xef
syms pi
w(x)=(4*k1^2/(k1^2+k2^2))*exp(-2/hp*sqrt(2*m0*(U0-E))*x)

re=subs(w(x),x,xef)/subs(w(x),x,0)
% exp(-(2*2^(1/2)*xef*(-m0*(E - U0))^(1/2))/hp) =  e^(-1)
eq1=-(2*2^(1/2)*xef*(-m0*(E - U0))^(1/2))/hp==-1
xef=solve(eq1,xef)
% (2^(1/2)*hp)/(4*(m0*(U0-E))^(1/2))
syms DU0E  % =U0-E
xef=(2^(1/2)*hp)/(4*(m0*DU0E)^(1/2))
digits(3)
xef1=vpa(subs(xef,[hp m0 DU0E],[1.05e-34 9.1e-31 1.6e-19]))
% 9.73e-11 m ~ 0.1 nm