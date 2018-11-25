% dk=4.04e-37
clear
digits(4)
syms dk k0 e r
Fc=2*dk*k0*e^2/r^2

Fc=subs(Fc,[dk k0 e r],[4.04e-37 9e9 1.6e-19 1])
vpa(Fc)
% 1.862e-64

syms mp G r
Fg=G*mp^2/r^2
Fg=subs(Fg,[G mp r],[6.67e-11 1.67e-27 1])
vpa(Fg)
% 1.86e-64