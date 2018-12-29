syms a x real
syms A Psi(x)
assume(a>0)
Psi=A*x*(a-x)
In=int(Psi'*Psi,x,0,a)
% (a^5*abs(A)^2)/30 =1 =>
A1=sqrt(30/a^5)
Psi=subs(Psi,A,A1)
% (30^(1/2)*x*(a - x))/a^(5/2)
Hm=int(Psi'*OperH(Psi),x,0,a)
% (5*hp^2)/(a^2*m)

function H=OperH(psi)
syms x m hp
H=-hp^2/(2*m)*diff(psi,x,2);
H=simplify(H);
end