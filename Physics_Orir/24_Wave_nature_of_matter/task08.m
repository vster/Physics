% P=1.7e-18 W
% nf-?

% lam=500 nm
clear
syms h c lam P
ef=h*c/lam
n=P/ef
% (P*lam)/(c*h)
digits(3)
n1=vpa(subs(n,[P lam c h],[1.7e-18 500*1e-9 3e8 6.6e-34]))
% 4.29 photons

