% Momentum operator Lz
function Lz=OperLz(psi)
syms x y z hp real
Lz=-i*hp*(x*diff(psi,y)-y*diff(psi,x));
end