a = 1 % mm
b = 5 % mm
k0=9e9

Cl=1/(2*k0*log(b/a))

Cl=vpa(Cl)
% 3.45e-11 F/m
Cl=Cl/1e-12
% 34.5 pF/m