% The use of microparticles to study the structure of matter

% Imin=0.61*lam/(n*sin(alfa))

% sin(phi(m))~m*0.61*lam/R                  (2.23)
syms m lam phi
R=m*0.61*lam/sin(phi)
digits(2)
R1=vpa(subs(R,[m lam phi],[1 1.7e-15 18*pi/180]))
% 3.4e-15 m = 3.4 fm
R2=vpa(subs(R,[m lam phi],[2 1.7e-15 31*pi/180]))
% 4.0e-15 m = 4 fm
R3=vpa(subs(R,[m lam phi],[3 1.7e-15 48*pi/180]))
% 4.2e-15 m = 4.2 fm

% The density of the electric charge inside the proton
syms ro0 r a real
assume(a>0)
ro(r)=ro0*exp(-r/a)                           % (2.24)
% ro0=3*e/fm^3
% a=0.23 fm
r2m=int(4*pi*r^2*ro(r)*r^2,r,0,inf)/int(4*pi*r^2*ro(r),r,0,inf)
% 12*a^2
r2m1=vpa(subs(r2m,a,0.23))
% 0.63 fm^2
rmp=sqrt(r2m1)
% 0.8 fm