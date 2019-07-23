% Momentum operator Ly
function LyS=OperLyS(psi)
syms r phi teta hp real
LyS=-i*hp*(cos(phi)*diff(psi,teta)-cot(teta)*sin(phi)*diff(psi,phi));
end