% Kinetic energy operator
function Ek=OperEk(psi)
syms x y z hp m real
Ek=-hp^2/(2*m)*laplacian(psi);
end