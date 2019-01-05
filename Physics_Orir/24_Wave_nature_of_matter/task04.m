% E=h*f=h*c/lam =>
% lam=h*c/E=K/E => K=h*c
clear
syms h c
K=h*c
digits(3)
K1=vpa(subs(K,[h c],[6.6e-34 3e8]))
% 1.98e-25 J*m

syms J m s
K_si=subs(K,[h c],[J*s m/s])
% J*m
syms eV A
K_eVA=subs(K_si,[J m],[1/1.6e-19 1e10])
% 62500000000000000000000000000
K2=K1*K_eVA
% 1.24e4 eV*A

syms h c E
lam=h*c/E
lam1=vpa(subs(lam,[h c E],[6.6e-34 3e8 1.6e-19]))
% 1.24e-6 m
lam_A=lam1*1e10
% 1.24e4 A