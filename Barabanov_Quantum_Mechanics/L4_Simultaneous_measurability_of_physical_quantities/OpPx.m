% Impulse operator
function Px=OpPx(psi)
syms hp x real
Px=-1i*hp*diff(psi,x);
end