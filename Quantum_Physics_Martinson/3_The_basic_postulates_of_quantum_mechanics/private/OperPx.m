% Impulse operator
function Px=OperPx(psi)
syms hp x real
Px=-1i*hp*diff(psi,x);
end