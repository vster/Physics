% tau=1e-8 s
% lam=500 nm
% delta_lam -?

% E=hp*w=2*pi*hp*c/lam
clear
syms d_lam hp c lam dE
eq1=dE==2*pi*hp*c*d_lam/lam^2
d_lam=solve(eq1,d_lam)
% (dE*lam^2)/(2*c*hp*pi)
% G*tau=dE*tau=hp => dE=hp/tau
syms tau
d_lam=subs(d_lam,dE,hp/tau)
% lam^2/(2*c*tau*pi)
digits(3)
d_lam=vpa(subs(d_lam,[lam c tau],[500e-9 3e8 1e-8]))
% 1.33e-14 m
d_lam_lam=d_lam/500e-9
% 2.65e-8
