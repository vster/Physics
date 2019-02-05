% R=1e5
% lam0=536 nm
clear
syms D_w c D_lam lam
eq1=D_w==2*pi*c*D_lam/lam^2
D_lam_1=solve(eq1,D_lam)
% (D_w*lam^2)/(2*c*pi)
syms lam0
D_lam=(D_w*lam0^2)/(2*c*pi)
syms muB B hp
D_lam_1=subs(D_lam,D_w,muB*B/hp)
% (B*lam0^2*muB)/(2*c*hp*pi)
R=lam0/D_lam_1
% (2*pi*c*hp)/(B*lam0*muB)
syms c hp muB lam0 R
Bmin=2*pi*c*hp/(muB*lam0*R)
digits(2)
Bmin1=vpa(subs(Bmin,[c hp muB lam0 R],[3e8 1.05e-34 9.27e-24 536e-9 1e5]))
% 0.4 T