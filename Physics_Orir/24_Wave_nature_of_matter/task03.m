% m=1e-15 g
syms m c
p=m*c
digits(3)
p1=vpa(subs(p,[m c],[1e-3*1e-15 3e8]))
% 3.0e-10 kg*m/s

% E=m*c^2=h*c/lam =>
syms h m
lam=h/(m*c)
lam1=vpa(subs(lam,[h m c],[6.6e-34 1e-3*1e-15 3e8]))
% 2.2e-24 m