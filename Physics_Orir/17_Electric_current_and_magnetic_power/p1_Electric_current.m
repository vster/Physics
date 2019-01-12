% Electric current 

% Determination of electric current
% I=Q/T              (17-1)
syms Q T
I=Q/T

syms C s
I_si=subs(I,[Q T],[C s])
% C/s ~ A

% Determination of current density
% j=ro*v             (17-2)
% where
% ro is density of charge
% v is velocity of charge
syms ro v
j=ro*v

syms A m s
j_si=subs(j,[ro v],[C/m^3 m/s])
% C/(m^2*s)~A/m^2

% I=j*A
% where
% A is area
syms j A
I=j*A

I_si=subs(I,[j A],[A/m^2 m^2])
% A

% I=int()j*dA

% I=n*e*vd*A         (17-3)
% vd is drift speed
% n is density of electrons
syms n e vd A
I=n*e*vd*A

I_si=subs(I,[n e vd A],[1/m^3 C m/s m^2])
% C/s~A