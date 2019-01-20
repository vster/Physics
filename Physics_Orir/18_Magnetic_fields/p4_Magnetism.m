% Magnetism

% T=I*A*B*sin(alfa)                            (18-11)

% F=qm*B
% T=F*L*sin(alfa)
% T=qm*B*L*sin(alfa)                           (18-12)
% qm*L=mu - magnetic moment
% T=mu*B*sin(alfa)
% T=cross(mu,B)
% Compare (18-11) and (18-12)
% I*A*B*sin(alfa) = qm*B*L*sin(alfa) =>
% mu=I*A - magnetic moment of the loop with current  (18-13)

% At each turn of the solenoid acts moment of force
% T1=I*A**B*sin(alfa)
% If N turns
% T=N*I*A*B*sin(alfa)
% I1=N*I/L - surface current, then
% T=I1*L*A*B*sin(alfa)
% Equate it and (18-12)
% qm*B*L*sin(alfa)=I1*L*A*B*sin(alfa) =>
% qm=I1*A                                            (18-14)

% m=n*A*L*mua
% where
% mua - magnetic moment of the atom
% L - rod length
% A - rod area
% qm*L=n*A*L*mua =>
% qm=n*A*mua
% Use last and (18-14), then
% I1*A=n*A*mua                                       (18-15)
% and so
% I1=n*mua
clear
syms n mua
I1=n*mua
digits(3)
I2=vpa(subs(I1,[n mua],[8.51e22*1e6 1.86e-23]))
% 1.58e6 A/m

syms k0 c
B=(4*pi*k0/c^2)*I1
B1=vpa(subs(B,[k0 c I1],[9e9 3e8 I2]))
% 1.99 T

% Electron magnetic moment

% I=e*(v/(2*pi*r)) - electron current on atom orbit
% mue=I*(pi*r^2)=(e*v/(2*pi*r))*(pi*r^2)=e*v*r/2=(e/(2*m))*(m*v*r)
% As m*v*r=L so
% mue=(e/(2*m))*L
% L can take only discrete values, multiples h/(2*p)
% Then min mue
syms e m h
mue=e/(2*m)*h/(2*pi)
mue1=vpa(subs(mue,[e m h],[1.6e-19 9.1e-31 6.63e-34]))
% 9.28e-24 A*m^2 - Electron magnetic moment

% Magnetic moment of the iron atom
mu_Fe=2*mue
mu_Fe1=2*mue1
% 1.86e-23 A*m^2


