% Quantum optics

% Photo effect
% Em=1/2*m0*vm^2=e*Uz              (1.54)
% Einstein equation for external photoelectric effect
% h*nu=Av+Em                       (1.55)
% Em=m0*vm^2/2 - maximum kinetic energy of nonrelativistic photoelectrons
% nuk=Av/h  and lamk=h*c/Av        (1.56)
% e*Uz=h*nu-Av                     (1.57)

% Compton effect
% 2*d*sin(phi)=n*lam1, n=1,2,3...   (1.58)
% delta_lam=lam1-lam=LamK*(1-cos(teta))
% LamK = 2.426e-12 m

% Law of energy conservation
% h*c/lam+m0*c^2=h*c/lam1+m*c^2            (1.60)
% m0 - electron rest mass
% m - relativistic mass of the recoil electron
% m=gamma*m0, where gamma=(1-v^2/c^2)^(-1/2)
% From (1.60): if m>m0, then lam1>lam
% Momentum conservation law
% hp*K=hp*K1+m*V                           (1.61)
% Here k=2*pi/lam, k1=2*pi/lam1, (K^K1)=teta

syms m v hp k k1 teta
eq1=(m*v)^2-(hp^2*k^2+hp^2*k1^2-2*hp^2*k*k1*cos(teta))
syms lam lam1
eq1=subs(eq1,[k k1],[2*pi/lam 2*pi/lam1])
% m^2*v^2 - (4*hp^2*pi^2)/lam^2 - (4*hp^2*pi^2)/lam1^2 + (8*hp^2*pi^2*cos(teta))/(lam*lam1)
syms h
eq1=m^2*v^2 - h^2/lam^2 - h^2/lam1^2 + 2*h^2*cos(teta)/(lam*lam1)
eq1=m^2*v^2-eq1
% m^2*v^2 = h^2/lam^2 + h^2/lam1^2 - (2*h^2*cos(teta))/(lam*lam1)  % (1.62)

% From (1.60)
syms m0 
% m*c=m0*c+h/lam-h/lam1
% m^2*c^2=
eq2=expand((m0*c+h/lam-h/lam1)^2)
% c^2*m0^2 + h^2/lam^2 + h^2/lam1^2 - (2*h^2)/(lam*lam1) + 
%           + (2*c*h*m0)/lam - (2*c*h*m0)/lam1             (1.63)

% m^2*v^2=
eq2=eq2-c^2*m0^2
% h^2/lam^2 + h^2/lam1^2 - (2*h^2)/(lam*lam1) + 
%       + (2*c*h*m0)/lam - (2*c*h*m0)/lam1               (1.64)

eq3=eq1-eq2
% (2*h^2)/(lam*lam1) - (2*c*h*m0)/lam + (2*c*h*m0)/lam1 - (2*h^2*cos(teta))/(lam*lam1)
% (2*c*h*m0)*(1/lam-1/lam1)=(2*h^2)/(lam*lam1)*(1-cos(teta))        (1.65)
% From here we get the Compton formula
% delta_lam=lam1-lam=(h/(m0*c))*(1-cos(teta))=LamK*(1-cos(teta))    (1.66)
syms h m0 c
LamK=h/(m0*c)
digits(4)
LamK1=vpa(subs(LamK,[h m0 c],[6.626e-34 9.11e-31 2.998e8]))
% 2.426e-12 m

syms J s kg m
LamK_si=subs(LamK,[h m0 c],[J*s kg m/s])
% (J*s^2)/(kg*m) ~ kg*m^2/s^2*s^2/(kg*m) ~ m