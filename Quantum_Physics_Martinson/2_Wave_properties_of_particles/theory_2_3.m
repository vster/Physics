% Uncertainty relation

% De Broglie equations (2.4)
% k=p0/hp, lamB=2*pi*hp/p0

% According to the theory of diffraction
% delta_x*sin(phi1)=lamB
% As phi1 is small so sin(phi1)~tan(phi1)
% lamB/delta_x=sin(phi1)~tan(phi1)             (2.13)
% In the same time
% tan(phi1)=px/py=px/p0
% tan(phi1)~delta_px/p0                        (2.14)
% From (2.13) and (2.14)
% deltax*delta_px~lamB*p0
% As lamB=2*pi*hp/p0 so
% deltax*delta_px~2*pi*hp                      (2.15)
% Strict conclusion is
% delta_x*delta_px>=hp/2                       (2.16)

% Hydrogen atom
% me*v^2/r=1/(4*pi*eps0)*(e^2/r^2)             (2.17)
% From (2.16)
% r*me*v=hp/2                                  (2.18)
% From (2.17) and (2.18)
clear
syms r v eps0 hp me e
eq1=me*v^2/r==1/(4*pi*eps0)*(e^2/r^2)
eq2=r*me*v==hp/2
[rsol,vsol]=solve(eq1,eq2)
% rsol=(pi*eps0*hp^2)/(e^2*me)
% vsol=e^2/(2*eps0*hp*pi)

r=rsol
% (pi*eps0*hp^2)/(e^2*me)
digits(3)
r1=vpa(subs(r,[eps0 hp me e],[8.85e-12 1.05e-34 9.1e-31 1.6e-19]))
% 1.32e-11 = 0.13e-10 m

% delta_vx>=hp/(2*m*delta_x)                    (2.19)
% Velocity of electron in atom
% delta_x=1e6 m/s

% Uncertainty relation for energy and time
% delta_E*delta_t>=hp                            (2.20)