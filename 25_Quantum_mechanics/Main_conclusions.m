% Main conclusions

% Wave function of a free particle
syms A k0 x w t
ksi(x,t)=A*exp(i*(k0*x-w*t))

% If the particle is localized in space
% ksi(x,0)=exp(-x^2/(4*sigx^2))*exp(i*k0*x)
% Pulse distribution
% B(k)=(sigx/sqrt(pi))*exp(-sigx^2*(k-k0)^2)
% and ksi(x,0) = int B(k)*exp(i*k*x) dk

% Standard deviation of coordinates - sigx
% Pulse Standard Deviation - sigp
% sigp*sigx >= hp/2

% Wave Packet Speed
% vg=dw/dk=p/m=v
% Wave packet blurred by law
% delta_x=(hp/(m*delta_x0))*t

% A particle enclosed in a box of length L 
% corresponds to standing waves
% lam(n)=2*L/n
% E(n)=n^2*pi^2*hp^2/(2*m*L^2)

% In the case of a variable depth pit U=U(x), 
% the wave function satisfies the stationary 
% Schredinger condition
% d2ksi/dx2=-(2*m/hp^2)*(E-U(x))ksi

% In the case of a rectangular potential well

% inside the pit
% ksi1=B*cos(k*x+phi) 

% ouside the pit
% ksi2=A1*exp(-eta*x)+A2*exp(-eta*x)
% where eta=sqrt(2*m*(U0-E)/hp^2)

