clear
digits(5)
syms G mp r k0 e
Fg=G*mp^2/r^2
Fc=k0*e^2/r^2

k=Fc/Fg
% (e^2*k0)/(G*mp^2)
k=subs(k,[e k0 G mp],[1.6e-19 9e9 6.67e-11 1.67e-27])
vpa(k)
% 1.2386e36