% Main conclusions

clear
% Faraday law
% int_c()E*ds=-dPhiB/dt 
 
% EMF in frame
syms B A w t
EMF=B*A*w*sin(w*t)

% Law of Lentz
% Induced current creates a magnetic flux that is opposite 
% to the change in the original magnetic flux.

% Transformers
% V2/V1=n2/n1

% EMF of self-induction
syms L dI dt
EMF=-L*dI/dt
% where L - inductance of coil
syms k0 c N A x0
L=4*pi*(k0/c^2)*(N^2*A/x0)

% Capacitor and inductance
syms L C
f=1/(2*pi*sqrt(L*C))

% Energy in the inductor
syms L I
U=L*I^2/2

% This expression coincides with the result of integrating 
% the magnitude over the entire space.
% dU/dV=c^2*B^2/(8*pi*k0)

% The total energy density of the electromagnetic field
% dU/dV=1/(8*pi*k0)*(E^2+c^2*B^2)

% If an alternating voltage 
syms V0 w t XC
V=V0*sin(w*t)
% is applied to the capacitor then a current flows through it
I=(V0/XC)*sin(w*t+pi/2)
% where XC=1/(w*C)

% If an alternating voltage 
syms V0 w t XL
V=V0*sin(w*t)
% is applied to the inductance coil, 
% then a current flows through it
I=(V0/XL)*sin(w*t-pi/2)
% where XL=w*L

% In serial LCR-chain
syms I0 Z phi w t
I=I0*sin(w*t)
V=Z*I0*sin(w*t+phi)
% where
% Z=sqrt(R^2+(w*L-1/(w*C))^2)
% tan_phi=(w*L-1/(w*L))/R

% Average power dissipation
% Vrms*Irms*cos(phi)=Irms^2*R
% where
% Irms=sqrt(<I2>)=I0/sqrt(2)

% In RC-chain
syms EMF R V t
I=(EMF/R)*exp(-t/(R*C))

