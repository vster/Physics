function P2=OperP2(psi)
syms hp x y z real
P2=-hp^2*(diff(psi,x,2)+diff(psi,y,2)+diff(psi,z,2));
end