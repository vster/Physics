% Momentum operator Lx
function Lx=OperLx(psi)
syms x y z hp real
Lx=-i*hp*(y*diff(psi,z)-z*diff(psi,y));
end