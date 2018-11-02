% Impulse operator
function P=OperP(psi)
syms hp real
P=-1i*hp*gradient(psi);
end