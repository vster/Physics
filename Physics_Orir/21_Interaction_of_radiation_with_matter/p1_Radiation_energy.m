% Radiation energy

clear
syms j E x0 y0 z0 Dx
I=j*z0*Dx
V=E*y0
% dU/dt*I*V=(j*z0*Dx)*(E*y0)=j*E*(y0*z0*Dx)
% J=j*Dx
% DE=-(2*pi*k0/c)*j*Dx                  (21-1)

% DS - Power loss per surface
% DS=(1/(y0*z0))*dU/dt=j*E*Dx
% DS=-(c/(2*pi*k0))*E*DE                (21-2)

syms c k0 E Epad Bpad
% S - Total power per surface unit
S=int(-(c/(2*pi*k0))*E,E,Epad,0)
% (Epad^2*c)/(4*k0*pi)
S=(c^2/(4*pi*k0))*Epad*Bpad
% S=(c^2/(4*pi*k0))*cross(E,B) - Pointing's Vector   (21-3)

% Energy flow over time dt
% dU=S*A*dt
% dU - energy in dV
% dt=dx/c
% So
% dU=S*A*dx/c=S/c*dV
% or
% dU/dV=S/c
% Use (21-3), then
% dU/dV=1/c*((c^2/(4*pi*k0))*E*B)
% E=c*B
% dU/dV=E^2/(8*pi*k0)+(c^2*B^2)/(8*pi*k0)

