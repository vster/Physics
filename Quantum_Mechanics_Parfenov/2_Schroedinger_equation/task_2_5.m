% U=0
syms A k x real
psi=A*exp(i*k*x)

Em=int(psi'*OperEx(psi),x)/int(psi'*psi,x)
% (hp^2*k^2)/(2*m)

% Kinetic energy operator
function Ex=OperEx(psi)
syms x hp m real
Ex=-hp^2/(2*m)*diff(psi,x,2);
end