% E/E1=2*r/R
% E1=k0*q/R^2
% E=(2*r/r1)*k0*q/R^2
syms r l k0 Q q
R=sqrt(r^2+l^2/4)
E=(2*r/R)*k0*q/R^2
% (2*k0*q*r)/(l^2/4 + r^2)^(3/2)
