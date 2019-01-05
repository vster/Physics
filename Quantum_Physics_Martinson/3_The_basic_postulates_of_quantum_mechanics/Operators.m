function X=OperX(psi)
syms x real
X=x*psi;
end

function Y=OperY(psi)
syms y real
Y=y*psi;
end

function Z=OperZ(psi)
syms z real
Z=z*psi;
end

function R=OperR(psi)
syms x y z real
X=x*psi;
Y=y*psi;
Z=z*psi;
R=[X;Y;Z];
end

function Px=OperPx(psi)
syms hp x real
Px=-1i*hp*diff(psi,x);
end

function Py=OperPy(psi)
syms hp y real
Py=-1i*hp*diff(psi,y);
end

function Pz=OperPz(psi)
syms hp z real
Pz=-1i*hp*diff(psi,z);
end

function P=OperP(psi)
syms hp x y z real
Px=-1i*hp*diff(psi,x);
Py=-1i*hp*diff(psi,y);
Pz=-1i*hp*diff(psi,z);
P=[Px;Py;Pz];
end

function P2=OperP2(psi)
syms hp x y z real
P2=-hp^2*(diff(psi,x,2)+diff(psi,y,2)+diff(psi,z,2));
end