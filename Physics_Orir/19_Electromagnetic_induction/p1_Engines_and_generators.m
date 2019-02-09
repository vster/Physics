% EDS=-dPhi/dt

% Engines and generators
clear
syms q v B w l1 l2 teta
% F1=q*cross(v,B)
F1=q*(w*l2/2)*B*sin(teta)
% here v=w*l2/2
W1=F1*l1
% (B*l1*l2*q*w*sin(teta))/2
W=q*l1*l2*B*w*sin(teta)
EMF=W/q
% B*l1*l2*w*sin(teta)
% l1*l2=A - square
% teta=w*t
syms A t
EMF=B*A*w*sin(w*t)                 % (19-1)

% PhiB=int()B*dA=B*l1*l2*cos(teta)=B*A*cos(w*t)
PhiB=B*A*cos(w*t)
dPhiB=diff(PhiB,t)
% -A*B*w*sin(t*w)
% EMF=-dPhiB/dt

% Electric motors
% T=I*A*B*sin(te
