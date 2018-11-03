syms n c(n) psi(n)
% c(n)=int(psi(n)'*Psi)
Psi=symsum(c(n)*psi(n),n)
