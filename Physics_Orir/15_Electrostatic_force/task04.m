syms k0 q r l
E1=k0*q/(r-l/2)^2
E2=k0*q/(r+l/2)^2
E=E2-E1
% (k0*q)/(l/2 + r)^2 - (k0*q)/(l/2 - r)^2
E=simplify(E2-E1)
% -(32*k0*l*q*r)/(l^2 - 4*r^2)^2