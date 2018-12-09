syms R e k0
digits(3)
S=4*pi*R^2
N=S*1e4
Q=N*e
V=k0*Q/R
% 40000*pi*R*e*k0
V1=vpa(subs(V,[R e k0],[6.37e6 1.6e-19 9e9]))
% 1155.0 V
