% Photon gas and its properties

% Photon radiation theory
% ef=h*nu=h*c/lam                      (1.41)
clear
syms h hp nu c lam
ef=h*nu
ef=h*c/lam

% mf*c^2=ef
% mf=h*nu/c^2=h/(c*lam)                (1.42)
mf=h*nu/c^2
mf=h/(c*lam)

% pf=h*nu/c=h/lam=2*pi*hp/lam           (1.43)
pf=h*nu/c
pf=h/lam
pf=2*pi*hp/lam
% k=2*pi/lam
syms k
pf=hp*k                                 % (1.44)

% The equation of state of the photon gas
% N=1/6*nw*c
% N1=awT*N       absorbed  
% N2=(1-awT)*N   reflected
% N1+N2=N
% N3             radiate
% N1*pf+N2*2*pf+N3*pf=2*(N1+N2)*pf=2*N*pf
% Pw=2*N*pf=1/3*nw*c*pf=1/3*nw*ef=1/3*uw         (1.45)
% P=1/3*int(0:inf)u(w,T)dw=1/3*u(T)              (1.46)
% u(T)=4/c*Rbb=4*sigma*T^4/c                     (1.47)
syms sigma c T
u(T)=4*sigma*T^4/c
% Formula for photon gas pressure
P=4/3*sigma*T^4/c                              % (1.48)
digits(4)
P1=vpa(subs(P,[sigma T c],[5.67e-8 1e8 3e8]))
% 2.52e16 Pa = 2.52e11 atm

% Thermodynamic characteristics of photon gas
% U=u(T)*V=4*sigma*T^4*V/c                      (1.49)
syms V
U=4*sigma*T^4*V/c
CV=diff(U,T)
% CV=(16*T^3*V*sigma)/c                            (1.50)

% dQ=T*dS=dU+P*dV
% dS=(dU+P*dV)/T=(16*sigma/c)*T^2*V*dT+16/3*(sigma/c)*T^3*dV
% dS=d((16*sigma/(3*c))*T^3*V)
% Photon gas entropy
S=(16*sigma/(3*c))*T^3*V                         % (1.50)
% Adiabatic process for photon gas
% T^3*V=const                                 (1.52)
% In view of (1.48), this ratio is transformed to
% P*V^(4/3)=const                              (1.53)
