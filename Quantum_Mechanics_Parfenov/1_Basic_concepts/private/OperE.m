% Kinetic energy operator
function E=OperE(psi,m)
syms hp real
E=-hp^2/(2*m)*laplacian(psi);
end