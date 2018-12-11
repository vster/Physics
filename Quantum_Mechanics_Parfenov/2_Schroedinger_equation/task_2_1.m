clear
syms t x A a hp m
Psi=A*exp(-a*(m*x^2/hp+1i*t))
% i*hp*diff(Psi,t)=((-hp^2/(2*m))Nabla^2+U(ksi,t))Psi

eq1=i*hp*diff(Psi,t)
% A*a*hp*exp(-a*((m*x^2)/hp + t*1i))
pretty(eq1)

syms U(x,t)
eq2=OperH(Psi,U)
% A*exp(-(a*(m*x^2 + hp*t*1i))/hp)*(a*hp + U(x, t) - 2*a^2*m*x^2)
pretty(eq2)

eq3=simplify(eq2-eq1)
% A*exp(-(a*(m*x^2 + hp*t*1i))/hp)*(U(x, t) - 2*a^2*m*x^2)
% U(x,t)=2*a^2*m*x^2     ? a^2*x^2*m - answer ?

function H=OperH(psi,U)
syms x m hp
H=-hp^2/(2*m)*diff(psi,x,2)+U*psi;
H=simplify(H);
end
