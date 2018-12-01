% Electric capacity
% C=Q/DV
% DV=4*pi*k0*x0*Q/A

% Two plates
% C=Q/DV=A/(4*pi*k0*x0)            (16-20)

% Coaxial cable
% Cl=lam/DV
% DV=2*k0*lam*log(b/a)
% Cl=1/(2*k0*log(b/a))

% Energy accumulation
% Q0=C*V0
% dU=V*dq
syms Q0 V q C
V=q/C
U=int(V,q,0,Q0)
% Energy stored in the capacitor
% U=Q0^2/(2*C)                       (16-22)

% E=4*pi*k0*Q0/A
syms E A k0 x0
Q01=E*A/(4*pi*k0)
U=subs(U,Q0,Q01)
% (A^2*E^2)/(32*C*k0^2*pi^2)
% Capacity
C1=A/(4*pi*k0*x0)
U=subs(U,C,C1)
% (A*E^2*x0)/(8*k0*pi)
% Vol=A*x0
syms Vol
U=subs(U,A*x0,Vol)
% (E^2*Vol)/(8*k0*pi)
% Electric field energy density
% U/Vol=E^2/(8*k0*pi)                (16-24)

