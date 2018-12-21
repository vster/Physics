% Probability flow density.
% j=(i*hp/(2*m))*(Psi*Nabla(Psi')-Psi'*Nabla(Psi))         (2.10)

syms x hp m real
syms Psi(x)
j=(i*hp/(2*m))*(Psi*diff(Psi',x)-Psi'*diff(Psi,x))