% P*V=N*k*T
syms P k T R
digits(3)
n=P/k*T
eps=1+4*pi*n*R^3
% (4*P*T*pi*R^3)/k + 1
eps1=vpa(subs(eps,[P T R k],[1e5 300 1e-10 1.38e-23]))
% 28.3
