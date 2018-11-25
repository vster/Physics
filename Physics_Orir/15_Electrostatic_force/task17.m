syms k0 x Q R
E1=k0*(x-R/2)*Q/((x-R/2)^2+R^2)^(3/2)
E2=k0*(x+R/2)*Q/((x+R/2)^2+R^2)^(3/2)

E=simplify(E1+E2)

pretty(E)
