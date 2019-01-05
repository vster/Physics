% E=1 eV

clear
syms h c E
lam=h*c/E
lamf=vpa(subs(lam,[h c E],[6.6e-34 3e8 1.6e-19]))
% 1.24e-6 m = 12400 A

% lamB=(pi*2^(1/2)*hp)/(Ek*m0)^(1/2)        (2.6)
syms hp Ek m0 pi
lamB=(pi*2^(1/2)*hp)/(Ek*m0)^(1/2) 
lamB_e=vpa(subs(lamB,[hp Ek m0],[1.05e-34 1.6e-19 9.1e-31]))
% 1.22e-9 m = 12.2 A