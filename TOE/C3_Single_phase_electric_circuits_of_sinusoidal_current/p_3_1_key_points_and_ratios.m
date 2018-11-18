% Key points and ratios

clear
% Sinusoidal currents and voltages 
% i=Im*sin(w*t+psii)
% u=Um*sin(w*t+psiu)

syms Im Um w t psii psiu
i=Im*sin(w*t+psii)
u=Um*sin(w*t+psiu)

% w=2*pi*f,  1/s
% f=1/T,     Hz

% Valid Values
% I=Im/sqrt(2)
% U=Um/sqrt(2)

% 2nd Kirchhoff Law
% u=uR+uL+uC
% uR=R*i
% uL=L*di/dt
% uC=1/C*int(0:t)i*dt+uC(0)

% Kirchhoff's laws in vector form

% 1st Kirchhoff Law
% sum(k=1:K)Ik=0

% 2nd Kirchhoff Law
% sum(k=1:K)Ek=sum(n=1:N)Un


