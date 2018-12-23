clear
syms A eps k0 x1 x0
C1=A*eps/(4*pi*k0*x1)
C2=A/(4*pi*k0*(x0-x1))
C=simplify(C1*C2/(C1+C2))
% (A*eps)/(4*k0*pi*(x1 + eps*x0 - eps*x1))
% A/(4*k0*pi*(x1/eps+x0-x1))