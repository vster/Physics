% Holography
clear
syms x y z w t real
syms a(y,z) phi(y,z)
E=a(y,z)*cos(w*t+phi(y,z))                       % (23-1)

syms a phi E0 real
Erez=E0*cos(w*t)+a*cos(w*t+phi)
% where a=a(y,z), phi=phi(y,z)

I=Erez^2
I=expand(I)
I=simplify(I)
% E0^2/2 + (E0^2*cos(2*t*w))/2 + a^2/2 + (a^2*cos(2*phi + 2*t*w))/2 + E0*a*cos(phi + 2*t*w) + E0*a*cos(phi)
Im=int(I,t,0,pi/w)/(pi/w)
% Im=E0^2/2 + cos(phi)*E0*a + a^2/2
% Im=I0/2+a^2/2+cos(phi)*E0*a

syms K1 real
syms a(y,z) phi(y,z)
Im=K1+E0*a(y,z)*cos(phi(y,z))                   % (23-2)
% where K1=I0/2+a^2/2

syms I1 K2 real
I=I1*cos(w*t)^2*(1-K2*Im)
% -I1*cos(t*w)^2*(K2*(K1 + E0*cos(phi(y, z))*a(y, z)) - 1)
E=sqrt(I)
% (-I1*cos(t*w)^2*(K2*(K1 + E0*cos(phi(y, z))*a(y, z)) - 1))^(1/2)

syms K3 K4 real
E=K3*cos(w*t)+2*K4*a*cos(w*t)*cos(phi)   % - from book
% where K3=1-K1*K2/2, K3=-K2*E0/4
E=K3*cos(w*t)+K4*a(y,z)*cos(w*t+phi(y,z))+K4*a(y,z)*cos(w*t-phi(y,z))
%  =direct       =light reflected            = light from subject
%   light         from subject                 with inverted phase
