% Wave interference from a large number of sources

% phi=k*(r2-r1)=k*d*sin(teta)
clear
syms R N phi
E=R*sin(N*phi/2)*2
E1=R*sin(phi/2)*2
E/E1
% sin((N*phi)/2)/sin(phi/2)
syms I0
I=I0*(E/E1)^2
% (I0*sin((N*phi)/2)^2)/sin(phi/2)^2
% If phi->0
I=limit(I,phi,0)
% I0*N^2