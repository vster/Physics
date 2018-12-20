% Total energy operator (Hamiltonian)
function H=OperH(psi,U)
syms x m hp
H=-hp^2/(2*m)*diff(psi,x,2)+U*psi;
H=simplify(H);
end