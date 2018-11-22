clear
syms A x l real
Psi=A*sin(pi*x/l)

I=int(Psi^2,x,0,l)
% (A^2*l)/2=1 => A=sqrt(2/l)

xm=int(Psi'*OperX(Psi),x,0,l)
% (A^2*l^2)/4
xm=subs(xm,A^2,2/l)
% l/2

pxm=int(Psi'*OperP(Psi),x,0,l)
% 0

Em=int(Psi'*OperE(Psi),x,0,l)
% (A^2*hp^2*pi^2)/(4*l*m)
Em=subs(Em,A^2,2/l)
% (hp^2*pi^2)/(2*l^2*m)

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