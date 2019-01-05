% Momentum operator Lz
function LzS=OperLzS(psi)
syms r phi teta hp real
Lz=-i*hp*diff(psi,phi)
end