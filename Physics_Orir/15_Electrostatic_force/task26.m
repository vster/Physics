syms k0 x0 Q R
E=k0*x0*Q/(x0^2+R^2)^(3/2)

dEx=simplify(diff(E,x0))
% (Q*k0*(R^2 - 2*x0^2))/(R^2 + x0^2)^(5/2)

x0m=solve(dEx==0,x0)
%   (2^(1/2)*R)/2
Emax=simplify(subs(E,x0,x0m))
%   (2*3^(1/2)*Q*R*k0)/(9*(R^2)^(3/2))