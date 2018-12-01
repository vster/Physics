% Dielectrics

% eps=C1/C

% C1=q0/V=q0/(E*x0)
% where
% E=4*pi*k0*sigma=4*pi*k0*(q0/A-q1/A)
% Then
% C1=q0/(4*pi*k0*(q0/A-q1/A)*x0)
% C1=1/(1-q1/q0)*A/(4*pi*k0*x0)=1/(1-q1/q0)*C
% C1/C=1/(1-q1/q0)                    (16-26)

% Full dipole moment
% pf=N*p
% pf=q1*x0
% q1*x0=N*p=(n*A*x0)*p
% n - number of particles per unit volume
% q1=n*A*p
% Subs q1 in (16-26)
% eps=1/(1-n*(q1/q0)*p)             (16-27)

% Dipole moment
% p=(R^3/k0)*E
% where R - atom radius
% Use
% E=4*pi*k0*((q0-q1)/A)
% we get
% p=4*pi*R^3*((q0-q1)/A)
% Subs this to (16-27) we get
% eps=1/(1-4*pi*n*R^3*(1-q1/q0))
% eps=1/(1-4*pi*n*R^3*(1/eps))
% then
% eps=1+4*pi*n*R^3