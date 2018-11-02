% Dx Operator
function Dx=OperDx(psi)
syms x real
Dx=diff(psi,x);
end