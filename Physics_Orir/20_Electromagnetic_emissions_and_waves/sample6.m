% L=0.3 m
% m=0.1 kg
% f=262 Hz

syms mu u lam f
T=mu*u^2
u1=lam*f
T=subs(T,u,u1)
% f^2*lam^2*mu
digits(3)
T1=vpa(subs(T,[f lam mu],[262 0.3*2 0.1/0.3]))
% 8244.0 N