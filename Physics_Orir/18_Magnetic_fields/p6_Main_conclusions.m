% Main conclusions
clear
% Ampere's Law
% int_c()B*ds=4*pi*(k0/c^2)*I_total
syms s B(s) k0 c I_total
eq1=int(B(s),s)==4*pi*(k0/c^2)*I_total

% Full magnetic flux through a closed surface
% int_c()B*dA=0
syms A B(A)
eq2=int(B(A),A)==0

% Bio-Savara Law
% dB=(k0/c^2)*I*cross(dI,r)/r^2  
syms I dI R r
dB=(k0/c^2)*I*dI*R/r^2

% The field inside the solenoid with n_l turns per unit length
% B=4*pi*(k0/c^2)*I*n_l
syms I n_l
B=4*pi*(k0/c^2)*I*n_l

% The magnetic field created by the rectilinear current
% B=(2*k0/c^2)*(I/r)
B=(2*k0/c^2)*(I/r)

% The magnetic field of the flat current
% B=2*pi*(k0/c^2)*I
B=2*pi*(k0/c^2)*I

% Effective magnetic charge (if any exist) 
% is expressed through surface current.
% qm=I1*A
syms I1 A
qm=I1*A

% Magnetic moment loop with current covering area A
% mu=I*A
mu=I*A

% Electron magnetic moment
% mu_e=(e/(2*m))*h/(2*pi)
syms e m h
mu_e=(e/(2*m))*h/(2*pi)