% Put Re=Rp=1e-15 m
% qe=-1.6e-19 C
% a) U - ?
% b) m - ?

% a) 
% Use (16-23) from sample09
syms k0 qe R
U=k0*qe^2/(2*R)
U1=subs(U,[k0 qe R],[9e9 1.6e-19 1e-15]);
digits(3)
U1=vpa(U1)
% 1.152e-13 J
U1ev=U1/1.6e-19
% 7.2e5 = 0.72 MeV

% b)
syms c
m=U/c^2
m1=subs(m,[U c],[U1 3e8])
% 1.28e-30 kg