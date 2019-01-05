function Pz=OperPz(psi)
syms hp z real
Pz=-1i*hp*diff(psi,z);
end