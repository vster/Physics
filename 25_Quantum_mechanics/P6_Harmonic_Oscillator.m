% Harmonic Oscillator

% L=2*x0
% Standing wave
% n*lam(n)/2=2*x0 => lam(n)=4*x0/n
% Mean impulse value
% p=h/lam=h/(4*x0/n)=n*h/(4*x0)
% Average kinetic energy
% K=p^2/(2*m)=n^2*h^2/(32*m*x0^2)
% Total energy
% E=2*K=n^2*h^2/(16*m*x0^2)
% E=1/2*m*w^2*x0^2
% E2=E*E=n^2*h^2*w^2/32 => E=(pi/2^(3/2))*n*h*w
% (pi/2^(3/2))~1
% E=n*h*w (n=1,2,3..)
% We will show that
% E(n)=(n-1/2)*h*w  (n=1,2,3...)

% Schredinger equation
% d2ksi/dx2=(2*m/hp^2)*(U0-E)ksi 
% Substitute U=(1/2)m*w^2*x^2
% then
% d2ksi/dx2=-(2*m/hp^2)*(E-(1/2)m*w^2*x^2)ksi     (25-21)
% Guessing ksi(x)=exp(-a*x^2)
syms a x 
ksi=exp(-a*x^2)
d2ksi=diff(ksi,x,2)
% 4*a^2*x^2*exp(-a*x^2) - 2*a*exp(-a*x^2)
% 4*a^2*x^2*exp(-a*x^2) - 2*a*exp(-a*x^2)=-(2*m/hp^2)*(E-(1/2)m*w^2*x^2)*exp(-a*x^2)
% -2*a + 4*a^2*x^2 =-2*m*E/hp^2+(m*w^2/h^2)*x^2

% Equate the coefficients at x^2
% 4*a^2=(m*w^2/h^2) => a=m*w/(2*hp) ???

% Compare free members
% -2*a = -2*m*E/hp^2 
% E=hp^2*a/m=(hp^2/m)*m*w/(2*hp) = h*w/2
% E=1/2*hp*w

