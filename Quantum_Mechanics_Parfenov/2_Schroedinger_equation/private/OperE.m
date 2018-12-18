% Kinetic energy operator
function E=OperE(psi)
syms hp m real
E=-hp^2/(2*m)*laplacian(psi);
end