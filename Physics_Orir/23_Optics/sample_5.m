% alfa=1e-6 rad
% a) a=100" = 2.54 m
% b) f=400 MGz
% a=1000' = 305 m

% a)
clear
syms lam a
teta_min=1.22*lam/a
digits(3)
teta_min1=vpa(subs(teta_min,[lam a],[5e-7 2.54]))
% 2.4e-7 rad < 1e-6 rad

% b)
syms c f
lam=c/f
lam1=vpa(subs(lam,[c f],[3e8 4e8]))
% 0.75 m
teta_min=1.22*lam/a
teta_min1=vpa(subs(teta_min,[lam a],[lam1 305]))
% 0.003 rad