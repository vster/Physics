% f = 1000 MHz
% R = 100 ly = 9.46e17 m
% D = 3 km = 3e3 m
clear
syms D R
teta=D/R
digits(3)
teta1=vpa(subs(teta,[D R],[3e3 100*9.46e15]))
% 3.17e-15 rad

lam1=3e8/1e9
%     0.3 m

syms lam
d=lam/(2*teta)
d1=vpa(subs(d,[lam teta],[lam1 teta1]))
% 4.73e13 m = 5.0e-3 ly
