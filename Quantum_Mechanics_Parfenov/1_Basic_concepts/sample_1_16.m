% x in (0,b)
% Psi=a*x*(b-x)

syms x a b
Psi=a*x*(b-x)
xm=int(Psi*x*Psi,x,0,b)
% (a^2*b^6)/60

% This value is not normalized. 
% Find the normalization factor
nf=int(Psi^2,x,0,b)
% (a^2*b^5)/30

xm=xm/nf
% b/2

Ekm=int(Psi*OperE(Psi,m),x,0,b) 
% (a^2*b^3*hp^2)/(6*m)

% Taking into account the normalization
Ekm=Ekm/nf
% (5*hp^2)/(b^2*m)

% Kinetic energy operator
function E=OperE(psi,m)
syms hp real 
E=-hp^2/(2*m)*laplacian(psi);
end