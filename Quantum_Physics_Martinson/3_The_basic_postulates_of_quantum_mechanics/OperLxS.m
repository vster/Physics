% Momentum operator Lx
function LxS=OperLxS(psi)
syms r phi teta hp real
LxS=i*hp*(sin(phi)*diff(psi,teta)+cot(teta)*cos(phi)*diff(psi,phi));
end