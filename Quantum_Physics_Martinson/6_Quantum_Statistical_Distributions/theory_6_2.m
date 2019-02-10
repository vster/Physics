% Quantum State Density
syms hp m0 n1 n2 n3 a1 a2 a3 real
syms pi
E=pi^2*hp^2/(2*m0)*((n1/a1)^2+(n2/a2)^2+(n3/a3)^2)    % (6.19)
r2=((n1*a2*a3)^2+(n2*a1*a3)^2+(n3*a1*a2)^2)/(a1*a2*a3)^(4/3)
syms r E
eq1=E==(pi^2*hp^2/(2*m0*(a1*a2*a3)^(2/3)))*r^2             % (6.20)
rsol=solve(eq1,r)
r=rsol(1)
% (2^(1/2)*E^(1/2)*m0^(1/2)*(a1*a2*a3)^(1/3))/(hp*pi)      % (6.21)
syms DV Jz r real
G=1/8*(4/3*pi*r^3)*1/DV*Jz
% (pi*Jz*r^3)/(6*DV)
G=subs(G,[r DV],[(2^(1/2)*E^(1/2)*m0^(1/2)*(a1*a2*a3)^(1/3))/(hp*pi) 1])
% (2^(1/2)*E^(3/2)*Jz*a1*a2*a3*m0^(3/2))/(3*hp^3*pi^2)     (6.22)

syms p m0 V real
E1=p^2/(2*m0)
G=simplify(subs(G,[a1*a2*a3 E],[V E1]))
% (Jz*V*m0^(3/2)*(1/m0)^(3/2)*(p^2)^(3/2))/(6*hp^3*pi^2)
G= 4/3*pi*p^3*V*(Jz/(2*pi*hp)^3)                         % (6.23)
% Vphase=V*4/3*pi*p^3                         (6.24)
syms Vphase
G=Vphase*Jz/(2*pi*hp)^3                     % (6.25)

% Dx*Dy*Dz*Dpx*Dpy*Dpz=(2*pi*hp)^3=h^3        (6.26)
% Dx*Dpx=2*pi*hp                              (6.27)

% Find now Quantum State Density g(E)
% g(E)=(G(E+dE)-G(E))/dE=dG(E)/dE
% g(E)=dG/dp*dp/dE=diff(G,p)*dp/dE
G= 4/3*pi*p^3*V*(Jz/(2*pi*hp)^3) 
diff(G,p)
% (Jz*V*p^2)/(2*hp^3*pi^2)

syms dpdE % =dp/dE
g(E)=Jz*4*pi*p^2*V/(2*pi*hp)^3*dpdE             %  (6.28)
% Expression (6.28) is common

% Find the density of quantum states for electrons and photons.
% For non-relativistic electrons
p1=sqrt(2*m0*E)
dp1=diff(p1,E)
ge(E)=simplify(subs(g(E),[p dpdE Jz],[p1 dp1 2]))
% (2^(1/2)*E*V*m0^2)/(hp^3*pi^2*(E*m0)^(1/2))
ge(E)=sqrt(2)*m0^(3/2)*V*sqrt(E)/(pi^2*hp^3)      % (6.29)

% For photons
syms c
p2=E/c
dp2=diff(p2,E)
gf(E)=simplify(subs(g(E),[p dpdE Jz],[p2 dp2 2]))
% (E^2*V)/(c^3*hp^3*pi^2)                          (6.30)
