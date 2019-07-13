% Main conclusions
clear
% I   int_c()E*dA=4*pi*k0*int()ro*dV   (Gauss theorem)
% II  int_c()E*ds=-int()dB/dt*dA       (Faraday law)
% III int_c()B*dA=0                    (lack of magnetic charges)
% IV  int_c()B*ds=(4*pi*k0/c^2)*int()j*dA+1/c^2*int()(dE/dt)*dA
%                   (Ampere's law)

% E=c*B
syms c B
E=c*B

syms x t y(x,t) c
eq1=diff(y,x,2)-1/c^2*diff(y,t,2)
% where y=Ey or Bz
syms Bz k0 J0 w
Ey=c*Bz
Ey=(2*pi*k0/c)*J0*cos(w*(t-x/c))

% If the current turns out to be periodic, but not sinusoidal, 
% then it can be expanded into a Fourier series.
syms t1 J(t1)
E=(2*pi*k0/c)*J(t1)
% t1=(t-x/c) - lag time

% lam*f=u
% w/k=u

syms x u y(x,u)
eq2=diff(y,x,2)-1/u^2*diff(y,u,2)   % (wave equation)
syms y0 w t k x
y=y0*cos(w*t-k*x)                   % (traveling wave)

syms T mu
u=sqrt(T/mu)
% where
% T - tension
% mu - string linear density

% average power carried by the string
Pm=T*w^2*y0^2/(2*u)
