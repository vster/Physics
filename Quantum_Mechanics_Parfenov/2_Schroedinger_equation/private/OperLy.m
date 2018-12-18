% Momentum operator Ly
function Ly=OperLy(psi)
syms x y z hp real
Ly=-i*hp*(z*diff(psi,x)-x*diff(psi,z));
end