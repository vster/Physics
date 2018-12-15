% R=1cm
% r=20cm
% Emax=1e6 V/m

syms k0 lam r R Emax
lam=Emax*R/(2*k0)

DV=2*k0*lam*log(r/R)