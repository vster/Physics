% Bio-Savara Law
clear
syms v c k0 q rv r
B=(v/c^2)*(k0*q*rv/r^2)
B=(k0/c^2)*(q*v*rv)/r^2

% q->dq
% dB=(k0/c^2)*(dq/dt)*(dL*rv/r^2)
% dB=(k0/c^2)*I*(cross(dL,rv)/r^2) - Bio-Savara Law           (18-8)
syms dL rv I
dB=(k0/c^2)*I*(dL*rv)/r^2

syms N m C A s
dB_si=subs(dB,[k0 c I dL rv r],[N*m^2/C^2 m/s A m 1 m])
% (A*N*s^2)/(C^2*m)~~T

% dF=d*q*cross(v,B)=dq*cross(dI/dt,B)=dq/dt*cross(dI,B)
% dF=I*cross(dI,B) - force acting on element of current      (18-10)
syms I dI B
dF=I*dI*B

syms A T
dF_si=subs(dF,[I dI B],[A m T])
% A*T*m~A*m*(N)/(A*m)~N