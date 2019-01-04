% W0=1.8 eV
% Kmax= 2 eV
% lam_max -? 

clear
syms Kmax W0 h c f
% f=(Kmax+W0)/h
lam=c/f
lam=subs(lam,f,(Kmax+W0)/h)
% (c*h)/(Kmax + W0)
digits(3)
lam1=vpa(subs(lam,[c h Kmax W0],[3e8 6.63e-34 2*1.6e-19 1.8*1.6e-19]))
% 3.27e-7 m