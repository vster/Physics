% Kinetic energy operator
function Ek=OperEk(psi)
syms hp m real
Ek=-hp^2/(2*m)*laplacian(psi);
end