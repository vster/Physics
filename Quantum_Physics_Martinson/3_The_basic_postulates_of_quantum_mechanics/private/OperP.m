function P=OperP(psi)
syms hp x y z real
Px=-1i*hp*diff(psi,x);
Py=-1i*hp*diff(psi,y);
Pz=-1i*hp*diff(psi,z);
P=[Px;Py;Pz];
end