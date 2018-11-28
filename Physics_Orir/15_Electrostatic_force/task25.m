syms k0 x Q R
R1=R/sqrt(2)
E1=k0*(x-R1)*Q/((x-R1)^2+R^2)^(3/2)
E2=k0*(x+R1)*Q/((x+R1)^2+R^2)^(3/2)

E=simplify(E1+E2)

pretty(E)

dEx=diff(E,x)
dEx1=simplify(subs(dEx,x,0))
%0

d2Ex=diff(E,x,2)
d2Ex1=simplify(subs(d2Ex,x,0))
% 0