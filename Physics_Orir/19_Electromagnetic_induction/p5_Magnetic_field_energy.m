% Magnetic field energy

% Oscillatory LC-contour
% Vab=q/C
% Vcd=-L*dI/dt
% q/C=-L*dI/dt
% subst dq/dt to I
% d2q/dt2=-(1/(L*C))*q
% q=q0*cos(w*t)
% where
% w=1/sqrt(L*C)
syms q0 w t
q=q0*cos(w*t)
% V=q/C=(q0/C)*cos(w*t)=V0*cos(w*t)
% f=1/(2*pi*sqrt(L*C))
I=diff(q,t)
% I=-q0*w*sin(t*w)

% Magnetic field energy
% U=1/2*q0^2/C=1/2*C*V0^2
% dU=(L*dI/dt)*dq=L*dI*dq/dt=L*dI*dq/dt=L*I*dI
syms L I I0
U=int(L*I,I,0,I0)
% U=(I0^2*L)/2                      (19-8)

U=1/2*L*I^2
% L=(4*pi*A*N^2*k0)/(c^2*x0)   (solenoid inductance)   (19-7)

% Subs (19-7) to (19-8)
syms A N k0 c x0
U=subs(U,L,(4*pi*A*N^2*k0)/(c^2*x0))
% (2*pi*A*I^2*N^2*k0)/(c^2*x0)

% B=(4*pi*k0/c^2)*Is=(4*pi*k0/c^2)*(N*I)/L     (18-7)
syms B
eq1=B==4*pi*k0*N*I/(c^2*x0)
I1=solve(eq1,I)
% (B*c^2*x0)/(4*N*k0*pi)
U=subs(U,I,I1)
% (A*B^2*c^2*x0)/(8*k0*pi)
% V=A*x0
U_V=U/(A*x0)
% U/V=(B^2*c^2)/(8*k0*pi) - magnetic field energy density   (19-9)

% The total energy density of the electromagnetic field
% dU/dV=1/(8*pi*k0)*(E^2+c^2*B^2) 
dU_dV=1/(8*pi*k0)*(E^2+c^2*B^2)                 % (19-10)