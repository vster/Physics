% Schr?dinger equation
clear
% i*hp*dPsi/dt=-hp/(2*m0)*Delta(Psi)+U*Psi          (3.8)
syms x y z t Psi(x,y,z,t) hp m0 U
eq1=i*hp*diff(Psi)==-hp/(2*m0)*laplacian(Psi,[x y z])+U*Psi

% Delta=Nabla^2=laplacian=d2/dx2+d2/dy2+d2/dz2      (3.9)

% i*hp*dPsi/dt=-(hp^2/(2*m0))*d2Psi/dx2             (3.10)
syms Psi(x,t) A W p
eq2=i*hp*diff(Psi,t)==-(hp^2/(2*m0))*diff(Psi,x,2)

% Psi(x,t)=A*exp(-i/hp*(W*t-p*x))                   (3.11)
Psi1=A*exp(-i/hp*(W*t-p*x))