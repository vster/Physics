syms ro mp R
digits(3)
n=ro/(4*mp)
eps=1+4*pi*n*R^3
% (ro*pi*R^3)/mp + 1
eps1=vpa(subs(eps,[ro R mp],[150 1e-10 1.67e-27]))
% 1.28