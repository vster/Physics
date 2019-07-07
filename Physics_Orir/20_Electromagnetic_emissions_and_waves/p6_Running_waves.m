% Running waves
clear
syms y0 lam x u t w
y=y0*2*pi/lam*cos(x-u*t) % Running wave (20-8)

% The condition that the wave has a crest at a given point
% 2*pi/lam*(x-u*t)=0
% x=u*t or u=x/t
% lam*f=u  (wave speed)      (20-9)
% lam/(2*pi)*(2*pi*f)=u or  lam/(2*pi)*w=u

y(x,t)=y0*cos((2*pi/lam)*x-w*t)
y(x,t)=y0*cos(w*t-2*pi/lam*x)
% 2*pi/lam=k - wave number
syms k
y(x,t)=y0*cos(w*t-k*x)
% where
% k=2*pi/lam - wave number     (20-10)
% w/k=u - wave speed           (20-11)

% alfa1 alfa2
% T mu D_x
% sin(alfa)=alfa=dy/dx
% Frez=T*alfa1-T*alfa2=(mu*D_x)*d2y/dt2
% T*D_alfa/D_x=mu*d2y/dt2
% alfa=dy/dx
% Then
% d2y/dx2=mu/T*d2y/dt2  (wave equation for string)   (20-12)

syms mu T x t y(x,t)
eq1=diff(y,x,2)-mu/T*diff(y,t,2)
y1=y0*2*pi/lam*cos(x-u*t)
eq2=simplify(subs(eq1,y,y1))
% -(2*y0*pi*cos(x - t*u)*(- mu*u^2 + T))/(T*lam)
% u=sqrt(T/mu) - wave speed on the string    (20-15)

% Substitute 1/u^2 instead of mu/T in (20-12)
% we get
% d2y/dx2=1/u^2*d2y/dt2  (wave equation) (20-16)
eq3=diff(y,x,2)-1/u^2*diff(y,t,2)

% y=y0*2*pi/lam*cos(x-u*t)=y0*cos(w*(t-x/u))  (20-17)
% is solution of the wave equation
y1=y0*cos(w*(t-x/u))

syms k0 c J0
Ey=2*pi*k0/c*J0*cos(w*(t-x/c))
% u=c, lam=2*pi*c/w
