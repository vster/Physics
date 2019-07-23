% Total energy operator (Hamiltonian)
function H=OperH(psi)
syms x y z m hp U(x,y,z)
H=-hp^2/(2*m)*laplacian(psi)+U*psi;
H=simplify(H);
end