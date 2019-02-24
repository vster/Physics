syms R A
Vc=4/3*pi*R^3*A
digits(3)
Vc1=vpa(subs(Vc,R,1.3e-15))
% 9.2e-45*A m^3
mc=A*mp
mc1=vpa(subs(mc,mp,1.67e-27))
% 1.67e-27*A
roc=mc1/Vc1
% 1.81e17 kg/m^3
