% Group speed

% Psi(x,t)=(C0*hp/sqrt(2*pi*hp))*exp(i*(p0x-E0*t)/hp)*f(x-dEp0*t)
clear
syms C0 x t m p p0 E0 dEp0 dp c hp f(x)
Psi(x,t)=(C0*hp/sqrt(2*pi*hp))*exp(i*(p0*x-E0*t)/hp)*f(x-dEp0*t)
% lam=2*pi*hp/p0 << 2*pi*hp/delta_p = delta_x, as delta_p<<p0

% |Psi(x,t)|^2 located at x in [x0-delta_x/2,x0+delta_x/2]
% delta_x=2*pi*hp/delta_p
% with center in point x0=(dE/dp)(0)*t
% And so
% delta_x*delta_p ~ 2*pi*hp
% Group speed
% vg=dEp0=(dE/dp)(0) 

% The group velocity of the wave coincides with 
% the velocity of the particle.
% E=p^2/(2*m) => vg=p/m=v
E=p^2/(2*m)
vg=diff(E,p)
% p/m = v

% in the relativistic case
E=sqrt(p^2*c^2+m^2*c^2)
vg=diff(E,p)
% (c^2*p)/(c^2*m^2 + c^2*p^2)^(1/2) = c^2*p/E = v