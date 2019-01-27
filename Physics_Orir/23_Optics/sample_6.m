% a= 5 cm = 0.05 m
% lam = 6328 A
% D = 3.84e8 m
clear
syms lam D a
Rd=1.22*lam*D/a
digits(3)
Rd1=vpa(subs(Rd,[lam D a],[6328e-10 3.84e8 0.05]))
% 5933.0 m = 5.9 km