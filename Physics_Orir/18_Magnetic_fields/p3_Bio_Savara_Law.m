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

% dF=d*q*cross(v,B)=dq*cross(dI/dt,B)=dq/dt*cross(dI,B)
% dF=I*cross(dI,B) - force acting on element of current      (18-10)
syms I dI B
dF=I*dI*B