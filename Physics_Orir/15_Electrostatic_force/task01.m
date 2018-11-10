syms k0 qe G me r
Fe=k0*qe^2/r^2
Fg=G*me^2/r^2

kk=Fe/Fg
% (k0*qe^2)/(G*me^2)
digits(4)
kk=subs(kk,[k0 qe G me],[9e9 1.6e-19 6.67e-11 9.1e-31])
vpa(kk)
% 4.171e42
