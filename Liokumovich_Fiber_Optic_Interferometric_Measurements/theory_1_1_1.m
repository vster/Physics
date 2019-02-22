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
% V=(Imax-imin)/(Imax+imin)                          (1.8)
% where
% Imax=I1+I2+2*sqrt(I1*I2)
% Imin=I1+I2-2*sqrt(I1*I2)
