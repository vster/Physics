% L=0.12 m
% lam/2=0.04 m
% u=30 m/s

clear
% a)
syms u lam
f=u/lam
digits(3)
f1=vpa(subs(f,[u lam],[30 0.08]))
% 375.0 Hz

% b)
syms L n
lamn=2*L/n
lam1=vpa(subs(lamn,[L n],[0.12 1]))
% 0.24 m
lam2=vpa(subs(lamn,[L n],[0.12 2]))
% 0.12 m

f=u/lam
f1=vpa(subs(f,[u lam],[30 lam1]))
% 125.0 Hz
f2=vpa(subs(f,[u lam],[30 lam2]))
% 250.0 Hz
f3=vpa(subs(f,[u lam],[30 0.08]))
% 375.0 Hz

% c)
syms mu u
T=mu*u^2
T1=vpa(subs(T,[mu u],[0.024/0.12 30]))
% 180.0 N
