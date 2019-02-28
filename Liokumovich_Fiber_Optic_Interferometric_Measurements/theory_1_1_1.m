% Light wave interference

% I=c/(4*pi)*sqrt(eps/mu)*<E^2>
% I=c/(4*pi)sqrt(mu/eps)*<H^2>                  (1.1)
syms c eps mu E H E2m H2m
Ie=c/(4*pi)*sqrt(eps/mu)*E2m
Ih=c/(4*pi)*sqrt(mu/eps)*H2m

syms w t Em1 Em2 phi1 phi2
E1=Em1*sin(w*t+phi1)
E2=Em2*sin(w*t+phi2)                               % (1.3)

% E=Em*sin(w*t+phi)                                  (1.4)
% Em^2=Em1^2+Em2^2+2*Em1*Em2*cos(phi1-phi2)          (1.5)
% I=I1+I2+2*sqrt(I1*I2)*cos(phi1-phi2)               (1.6)

% For the superposition of several monochromatic waves
% I=sum(i)I(i)+2*sum(i)sum(k)sqrt(I(i)*I(k))*cos(phi(i)-phi(k))   (1.7)

% The level of manifestation of interference characterizes 
% visibility (visibility function, contrast)
% V=(Imax-Imin)/(Imax+Imin)                          (1.8)
% where
% Imax=I1+I2+2*sqrt(I1*I2)
% Imin=I1+I2-2*sqrt(I1*I2)
syms I1 I2
Imax=I1+I2+2*sqrt(I1*I2)
Imin=I1+I2-2*sqrt(I1*I2)
V=(Imax-Imin)/(Imax+Imin)
% (4*(I1*I2)^(1/2))/(2*I1 + 2*I2)
V=simplify(V)
% (2*(I1*I2)^(1/2))/(I1 + I2)
V=2*sqrt(I1/I2)/((I1/I2)+1)
syms V phi1 phi2
I=(I1+I2)*(1+V*cos(phi1-phi2))                      % (1.9)

syms t Em1(t) Em2(t) phi1(t) phi2(t)
E1(t)=Em1(t)*sin(w*t+phi1(t))
E2(t)=Em2(t)*sin(w*t+phi2(t)) 
E(t)=E1(t)+E2(t)
syms tau x
E2(t)=E(t)^2
E2(t)=expand(E2(t))
E2m=1/tau*int(E2,x,t-tau,t)
E2m=simplify(E2m)
% Em1(t)^2/2 + Em2(t)^2/2 - (cos(2*phi1(t) + 2*t*w)*Em1(t)^2)/2 - (cos(2*phi2(t) + 2*t*w)*Em2(t)^2)/2 - Em1(t)*Em2(t)*cos(phi1(t) + phi2(t) + 2*t*w) + Em1(t)*Em2(t)*cos(phi1(t) - phi2(t))
% <E^2>=1/tau*int(t-tau:t)E(x)^2*dx
% <E^2>=<Em1^2>+<Em2^2>+
%    +2*1/tau*int(t-tau:t)Em1(x)*Em2(x)*cos(phi1(x)-phi2(x))dx   (1.11)

% I(t)=I1(t)+I2(t)+2*sqrt(I1(t)*I2(t))*cos(phi1(t)-phi2(t))      (1.12)
% This result matches (1.6)