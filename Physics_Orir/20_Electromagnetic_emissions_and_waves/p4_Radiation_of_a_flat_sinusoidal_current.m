% Radiation of a flat sinusoidal current

% We will solve system of equations
% dEy/dx=-dBz/dt                                (20-4)
% d2Bz/dx2=1/c^2*d2Bz/dt2                       (20-5)

clear
syms w t I0 c k0
I=I0*cos(w*t)
Bz2=(2*pi*k0/c^2)*I0*cos(w*t)

syms t x Bz(x,t)
% Equation (20-5)
eq1=diff(Bz,x,2)-1/c^2*diff(Bz,t,2)

% Try guess solution Bz(x,t)
Bz3(x,t)=(2*pi*k0/c^2)*I0*cos(w*(t-x/c))         % (20-6)

% Check solution
eq3=subs(eq1,Bz,Bz3)
% 0
% If x->0 then Bz3->Bz2

% Electric field of radiation
% dEy/dx=-dBz/dt                                   (20-4)

% B0=(2*pi*k0/c^2)*I0
syms B0
Bz4(x,t)=B0*cos(w*(t-x/c))
% dEy/dx=
dEydz=-diff(Bz4,t)
% B0*w*sin(w*(t - x/c))
Ey=int(dEydz,x)
% B0*c*cos(w*(t - x/c))
Ey=subs(Ey,B0,(2*pi*k0/c^2)*I0)
% (2*I0*k0*pi*cos(w*(t - x/c)))/c

% Field of radiation
% Ey=(2*pi*k0/c)*I0*cos(w*(t - x/c))              (20-7)

Ey/Bz3
% c

% We show that
% E=c*B
% and 
% Electric and magnetic fields are perpendicular
