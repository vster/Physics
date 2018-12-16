% R=1cm
% r=20cm
% Emax=1e6 V/m

syms k0 lam r R Emax
lam=Emax*R/(2*k0)

DV=2*k0*lam*log(r/R)
% Emax*R*log(r/R)
digits(3)
V1=vpa(subs(DV,[Emax,R,r],[1e6,0.01,0.2]))
% 3.0e4 V
lam1=vpa(subs(lam,[Emax,R,k0],[1e6,0.01,9e9]))
% 5.56e-7 Q/m