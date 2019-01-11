syms A x m w hp real
syms A0
psi0(x)=A0*exp(-(m*w*x^2)/(2*hp))

A1=1/sqrt(factorial(1))
psi1(x)=A1*OpAp(psi0(x))
psi1(x)=simplify(psi1(x))

Psi=simplify(A*(3*psi0+4*psi1))

In=int(Psi'*Psi,x)

function Am=OpAm(psi)
syms hp m w p x real
Am=1/sqrt(2*hp*m*w)*(i*OpPx(psi)+m*w*OpX(psi));
Am=expand(Am);
end

function Ap=OpAp(psi)
syms hp m w p x real
Ap=1/sqrt(2*hp*m*w)*(-i*OpPx(psi)+m*w*OpX(psi));
Ap=expand(Ap);
end

function Px=OpPx(psi)
syms hp x real
Px=-1i*hp*diff(psi,x);
end

function X=OpX(psi)
syms x real
X=x*psi;
end

function H=OpH(psi)
syms m w hp real
H=1/(2*m)*(OpPx(OpPx(psi))+(m*w)^2*OpX(OpX(psi)));
end
