clear
syms A m x a k real
assume(a>0)
Psi=A*exp(-x^2/a^2+i*k*x)

I=int(Psi'*Psi,x,-inf,inf)
I=simplify(I)
% (2^(1/2)*A^2*a*pi^(1/2))/2 = 1
% A^2=sqrt(2/(a^2*pi))

xm=int(Psi'*OperX(Psi),x,-inf,inf)
% 0

pxm=int(Psi'*OperP(Psi),x,-inf,inf)
% (2^(1/2)*A^2*a*hp*k*pi^(1/2))/2
pxm=subs(pxm,A^2,sqrt(2/(a^2*pi)))
% hp*k

Em=int(Psi'*OperE(Psi),x,-inf,inf)
Em=simplify(Em)
% (2^(1/2)*A^2*hp^2*pi^(1/2)*(a^2*k^2 + 1))/(4*a*m)
Em=simplify(subs(Em,A^2,sqrt(2/(a^2*pi))))
% (hp^2*(a^2*k^2 + 1))/(2*a^2*m)
pretty(Em)

% Coordinate operator
function x=OperX(psi)
syms x
x=x*psi;
end

% Impulse operator
function P=OperP(psi)
syms x hp
P=-1i*hp*diff(psi,x);
end

% Kinetic energy operator
function E=OperE(psi)
syms m hp x real
E=-hp^2/(2*m)*diff(psi,x,2);
end
