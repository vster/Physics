% T=0
% E=EF0
% n=2e22 1/cm3 = 2e28 1/m3

clear
syms E m0 dE hp dn real
syms pi
assume(hp>0)
assume(m0>0)
dn1=((2^(1/2)*E^(1/2)*dE*m0^(3/2))/(hp^3*pi^2))
eq1=dn==dn1
dEsol=solve(eq1,dE)
% (2^(1/2)*dn*hp^3*pi^2)/(2*E^(1/2)*m0^(3/2))
dE=dEsol
syms n
assume(n>0)
EF0=(hp^2/(2*m0))*(3*pi^2*n)^(2/3)
dE=simplify(subs(dE,[E dn],[EF0 2]))
% (2*3^(2/3)*hp^2*pi^(4/3))/(3*m0*n^(1/3))
pretty(dE)
digits(2)
dE1=vpa(subs(dE,[hp m0 n],[1.05e-34 9.1e-31 2e28]))
dE1/1.6e-19
