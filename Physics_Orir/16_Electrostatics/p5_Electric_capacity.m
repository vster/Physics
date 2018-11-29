% Electric capacity
% C=Q/DV
% DV=4*pi*k0*x0*Q/A

% Two plates
% C=Q/DV=A/(4*pi*k0*x0)

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
% U=Q0^2/(2*C)
