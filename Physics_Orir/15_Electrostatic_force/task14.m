% E*(4*pi*r^2)=4*pi*k0*Q
% R=sqrt(k0*Q/E)

clear
digits(5)
syms k0 Q E
R=sqrt(k0*Q/E)
R=subs(R,[k0 Q E],[9e9 1 1e6])
vpa(R)
% 94.868 m