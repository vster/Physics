syms A1 A2 phi1 phi2
psi1=A1*exp(1i*phi1)+A2*exp(1i*phi2)
psi2=subs(psi1,[exp(1i*phi1),exp(1i*phi2)],[cos(phi1)+i*sin(phi1),cos(phi2)+i*sin(phi2)])