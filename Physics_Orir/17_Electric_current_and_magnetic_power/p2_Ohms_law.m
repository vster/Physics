% Ohm's law

% Determination of resistance
% R=V/I
clear
syms V I
R=V/I

syms A
R_si=subs(R,[V I],[V A])
% V/A~Om

% Conclusion of Ohm's Law

% dt=L/u
% where
% L is middle path between collisions
% u is average velocity of conduction electrons

% vd=du - drift speed
% m*du/dt=e*E - Newton's second law
% du=vd=e*E*dt/m
% dt=L/u
% vd=e*L*E/(2*m*u)
% L is small => vd<<u

% I=n*e*vd*A         (17-3)
% vd is drift speed
% n is density of electrons
% % A is area

syms n e A L E m u
vd=e*L*E/(2*m*u)
I=n*e*vd*A
% I=(A*E*L*e^2*n)/(2*m*u)       (17.4)

% E=V/x0
syms V x0
I=subs(I,E,V/x0)
% I=(A*L*V*e^2*n)/(2*m*u*x0)
R=V/I
% R=(2*m*u*x0)/(A*L*e^2*n)
% then
% R=ro*x0/A
% where
% ro is resistivity
R=(2*m*u*x0)/(A*L*e^2*n)

syms kg m s C
R_si=subs(R,[m u x0 A L e n],[kg m/s m m^2 m C 1/m^3])
% (2*kg*m^2)/(C^2*s)~(kg*m^2)/(C^2*s)~Om

% Joule heat loss
% dEh=V*dq   |:dt
% dEh/dt=V*dq/dt=V*I
% Electric power loss or Joule loss
% P=V*I                     (17-6)
% P=I^2*R or P=V^2/R
syms I R
P=I^2*R

syms A Om
P_si=subs(P,[I R],[A Om])
% A^2*Om~W

% Electromotive force
% Emf=dW/dq


