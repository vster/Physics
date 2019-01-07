% Schredinger equation for stationary states

% i*hp*dPsi/dt=OperH(Psi)                  (4.1)
% where
% OperH=hp^2/(2*m0)*Delta+U(x,y,z,t)

% Psi(x,y,z,t)=psi(x,y,z)*phi(t)           (4.2)

% Subs (4.2) to (4.1) and divide on psi*phi we get
% i*hp/phi*dphi/dt=1/psi*OperH(psi)            (4.3)
% OperH(psi)=E*psi                   (4.4a)
% i*hp*dphi/dt=E*phi                 (4.4b)
% -hp^2/(2*m0)*laplacian(psi)+U*psi=E*psi           (4.5)
% laplacian(psi)+2*m0/hp^2*(E-U)*psi=0           (4.6)

% Solve (4.4b)
clear
syms hp E t real
syms phi(t)
eq1=i*hp*diff(phi,t)-E*phi
phiSol=dsolve(eq1)
% phi=phi0*exp(-(E*t*1i)/hp)                (4.7)
% Put phi0=1 then
% phi=exp(-(E*t*1i)/hp)
% And so
% Psi(x,y,z,t)=psi(x,y,z)*exp(-(E*t*1i)/hp)
% Psi(x,y,z,t)=psi(x,y,z)*exp(-i*w*t)         (4.8)
% where w=E/hp
syms x y z w real
syms psi(x,y,z)
Psi=psi*exp(-i*w*t)
% p=abs(Psi)^2
p=simplify(Psi'*Psi)
% p=abs(psi(x, y, z))^2                (4.9)

% int(RN)|Psi|^2*dV=1
% int(RN)|psi|^2*dV=1                  (4.10)
