% -i*hp d/dx psi(x) = px*psi(x)
% int d_Psi/Psi = int (i/hp) px dx
% log(Psi) = (i/hp) px*x + const
% psi(x)=A*exp(i*px*x/hp)

syms hp x px psi(x)
eqn=i*hp*diff(psi,x)+px*psi
solpsi=dsolve(eqn)
% C4*exp((px*x*1i)/hp)
syms A
Psi=A*exp((px*x*1i)/hp)