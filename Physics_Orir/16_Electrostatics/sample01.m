R=1e-10 % m
e=-1.6e-19  % C
Q=e
me=9.1e-31  % kg
k0=9e9

% F=e*E=e*(k0*((-e)/R^3)*x=-k0*(e^2/R^3)*x
% me*d2x/dt2=-k0*(e^2/R^3)*x
% d2x/dt2=-(k0*e^2/(me*R^3))*x
% w=sqrt(k0*e^2/(me*R^3))

f=sqrt(k0*e^2/(me*R^3))/(2*pi)
% 2.5324e+15 Hz

syms k0 e me R
f=sqrt(k0*e^2/(me*R^3))/(2*pi)
syms N m C kg s
f_si=subs(f,[k0 e me R],[kg*m^3/(s^2*C^2) C kg m])
% (1/s^2)^(1/2)/(2*pi) ~ 1/s ~ Hz