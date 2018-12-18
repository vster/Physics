% Total energy operator (Hamiltonian)
function H=OperH(psi)
syms m x real
syms U(x)
H=OperE(psi)+U*psi;
end