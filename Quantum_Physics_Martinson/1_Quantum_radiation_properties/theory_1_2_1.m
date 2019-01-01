% Quantum Theory of Radiation

% Volumetric energy density of equilibrium radiation

% The integrated volumetric energy density
% u(T)=int(0:inf)u(w,T)dw
% u(w,T) is energy spectral density
% dOm=sin(teta)*d_teta*d_phi
% du=u(T)*dOm/(4*pi)                        (1.13)
% dw=du*c*dt*dS=du*c*dt*dS*cos(teta)=
%    =c/(4*pi)*u(T)*cos(teta)*sin(teta)*d_teta*d_phi*dS*dt      (1.14)
syms c T teta phi u(T)
Phi=c/(4*pi)*u(T)*int(int(cos(teta)*sin(teta),teta,0,pi/2),phi,0,2*pi)
% Phi=(c*u(T))/4                         (1.15)
% Rbb=c/4*u(T)
% or
% u(T)=4/c*Rbb                           (1.16)
% and so
% rbb(w,T)=c/4*u(w,T)
% or
% u(w,T)=4/c*rbb(w,T)                    (1.17)

% Rayleigh-Jeans Formula
% l=n1*lam/2, n1=1,2,3...                (1.18)
% l is the distance between the walls
% kx=2*pi/lam
% kx=n1*pi/l, n1=1,2,3...                (1.19)
% k=kx*ex+ky*ey+kz*ez
% kx=n1*pi/l, ky=n2*pi/l, kz=n3*pi/l     (1.20)
% k=|k|=sqrt(kx^2+ky^2+kz^2)=pi/l*sqrt(n1^2+n^2+n^3)    (1.21)
% k=2*pi/lam=w/c
% w=pi*c/l*sqrt(n1^2+n2^2+n^3), n1,n2,n3=0,1,2,3...     (1.22)
% n1^2+n^2+n3^2=R^2                      (1.23)
% where R=w*l/(pi*c) is radius of sphere
% N1=1/8*4/3*pi*R^3=1/6*w^3*l^3/(pi^2*c^3)=1/6*w^3*V/(pi^2*c^3)   (1.24)
% where V=l^3
% N=2*N1=1/3*w^3*V/(pi^2*c^3)            (1.25)
% dN=w^2*dw*V/(pi^2*c^3)                 (1.26)
% <eps> is average standing wave energy
% u(w,T)*dw=dN*<eps>/V
% u(w,T)=w^2*<eps>/(pi^2*c^3)            (1.27)
% <eps>=1/2*k*T+1/2*k*T=k*T              (1.28)
% u(w,T)=w^2*k*T/(pi^2*c^3)              (1.29)
% And so we have Rayleigh-Jeans Formula:
% rbb(w,T)=w^2*k*T/(4*pi^2*c^2)          (1.30)
% Correct for small requencies
% u(T)=4/c*Rbb=int(0:inf)u(w,T)dw=k*T/(pi^2*c^3)*int(0:inf)w^2dw->inf
