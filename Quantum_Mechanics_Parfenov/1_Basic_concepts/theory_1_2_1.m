syms psi0 x y z psi(x) m
R1=OperR(psi0,[x y z])
% [ psi0*x, psi0*y, psi0*z]

P1=OperP(psi(x))
% -hp*diff(psi(x), x)*1i

E1=OperE(psi(x),m)
% -(hp^2*diff(psi(x), x, x))/(2*m)

syms r t U(r,t) psi(r)
H1=OperH(psi(r),m,U(r,t))
% U(r, t) - (hp^2*diff(psi(r), r, r))/(2*m)

syms x y z psi(x,y,z)
L1=OperL(psi(x,y,z))
L1.'
% - hp*y*diff(psi(x, y, z), z)*1i + hp*z*diff(psi(x, y, z), y)*1i
%   hp*x*diff(psi(x, y, z), z)*1i - hp*z*diff(psi(x, y, z), x)*1i
% - hp*x*diff(psi(x, y, z), y)*1i + hp*y*diff(psi(x, y, z), x)*1i

% Coordinate operator
function R=OperR(psi,r)
R=r*psi;
end

% Impulse operator
function P=OperP(psi)
syms hp
P=-1i*hp*gradient(psi);
end

% Kinetic energy operator
function E=OperE(psi,m)
syms hp
E=-hp^2/(2*m)*laplacian(psi);
end

% Total energy operator (Hamiltonian)
function H=OperH(psi,m,U)
H=OperE(psi,m)+U;
end

function L=OperL(psi)
syms hp
syms x y z
R=[x y z];
P=-1i*hp*[diff(psi,x) diff(psi,y) diff(psi,z)];
L=cross(R,P);
end