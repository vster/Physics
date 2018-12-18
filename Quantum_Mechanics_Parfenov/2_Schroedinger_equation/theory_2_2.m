% Stationary Schredinger equation

% OperH(Psi_n(x,t))=En*Psi_n(x,t)
% for statinary state
% Psi_n(x,t)=psi_n(x)*phi(t)

% i*hp*psi*d_phi/dt=(-hp^2/2*m)*phi*nabla^2(psi)+U*psi*phi  |:(psi*phi) =>
% i*hp*(1/phi)*d_phi/dt=(-hp^2/2*m)*(1/psi)*nabla^2(psi)+U

% i*hp*(1/phi)*d_phi/dt=E
clear
syms hp t E real
syms phi(t)
eqn1=i*hp*(1/phi)*diff(phi,t)-E
phiSol=dsolve(eqn1)
% C53*exp(-(E*t*1i)/hp)

% Psi_n(x,t)=psi_n(x)*exp(-(1i*En*t)/hp)            (2.5)

% OperH(psi(x))=E*psi(x)                            (2.6)
% This is stationary Schredinger equation

syms x real
syms Psi_n(x) psi_n(x)
Psi_n=psi_n
Enm=int(Psi_n'*OperH(Psi_n),x)
Enm=simplify(Enm)
% En*int(abs(psi_n(x))^2, x) = En
Enm=subs(Enm,int(abs(psi_n(x))^2, x),1)
% En

En2m=int(Psi_n'*OperH2(Psi_n),x)
En2m=simplify(En2m)
% En^2*int(abs(psi_n(x))^2, x) =En^2
En2m=subs(En2m,int(abs(psi_n(x))^2, x),1)
% En^2

sigma2En=simplify(Enm^2-En2m)
% 0

syms x real
syms psi(x)
Psi=psi(x)*exp(-1i*E*t/hp)

Psi2=Psi*Psi'
% conj(psi(x))*psi(x) = psi(x)^2

function H=OperH(psi)
syms En
H=En*psi;
end

function H2=OperH2(psi)
H2=OperH(OperH(psi));
end