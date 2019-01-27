% lam=6328 A
% D=5 m
% Rd=19 cm = 0.19 m
clear
syms Rd D
teta_min=Rd/D
digits(3)
teta_min1=vpa(subs(teta_min,[Rd D],[0.19 5]))
% 0.038 rad = 1.22*lam/a
syms teta_min lam
a=1.22*lam/teta_min
a1=vpa(subs(a,[lam teta_min],[6328e-10 teta_min1]))
% 2.03e-5 m
