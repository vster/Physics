% dU=V*dq=(k0*q/r)*dq
clear
syms k0 q R Q
U=int(k0/R*q,q,0,Q)
% (Q^2*k0)/(2*R)