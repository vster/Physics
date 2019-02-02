% Interference of waves emitted by two point sources

% p=p0*cos(w*t)
clear
syms E0 k r1 r2 w t
E1=E0*cos(k*r1-w*t)
E2=E0*cos(k*r2-w*t)
E=E1+E2
% E0*cos(k*r1 - t*w) + E0*cos(k*r2 - t*w)
% where
% E0=k0*w^2*p0/(c^2*r)
phi=(k*r2-w*t)-(k*r1-w*t)
% k*r2 - k*r1
E2=simplify(E^2)
% E0^2*(cos(k*r1 - t*w) + cos(k*r2 - t*w))^2
% E2=E0^2+E0^2+2*E0^2*cos(phi)=2*E0^2*(1+cos(phi))
syms I0
I=2*I0*(1+cos(k*(r2-r1)))
syms d teta
I=subs(I,r2-r1,d*sin(teta))
% I=2*I0*(cos(d*k*sin(teta))+1) - Wave interference from two sources (22-3)

% Maximum intensity observed when
% sin(teta)=n*lam/d   (maximum condition)   (22-4)
