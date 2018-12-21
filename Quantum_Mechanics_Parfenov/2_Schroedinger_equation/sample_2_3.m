syms x hp m real
syms Psi(x)
j=(i*hp/(2*m))*(Psi*diff(Psi',x)-Psi'*diff(Psi,x))

syms v E t p real
Psi1=1/sqrt(v)*exp(-i/hp*(E*t-p*x))

j=simplify(subs(j,Psi,Psi1))
% p/(m*v^(1/2)*conj(v^(1/2))) = p/(m*v)