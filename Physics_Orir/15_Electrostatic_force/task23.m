syms k0 x0 L q alfa
E1x=k0*(-q)*(x0+L/2)/((x0+L/2)^2+(L/2)^2)^(3/2)
E2x=k0*(+q)*(x0-L/2)/((x0-L/2)^2+(L/2)^2)^(3/2)
E3x=k0*(+q)*(x0+L/2)/((x0+L/2)^2+(L/2)^2)^(3/2)
E4x=k0*(-q)*(x0-L/2)/((x0-L/2)^2+(L/2)^2)^(3/2)

Ex=E1x+E2x+E3x+E4x

E1y=k0*q*(L/2)/((x0+L/2)^2+(L/2)^2)^(3/2)
E2y=-k0*q*(L/2)/((x0-L/2)^2+(L/2)^2)^(3/2)
E3y=k0*q*(L/2)/((x0+L/2)^2+(L/2)^2)^(3/2)
E4y=-k0*q*(L/2)/((x0-L/2)^2+(L/2)^2)^(3/2)

Ey=E1y+E2y+E3y+E4y
% (L*k0*q)/(L^2/2 + L*x0 + x0^2)^(3/2) - (L*k0*q)/(L^2/2 - L*x0 + x0^2)^(3/2)
% ~(L*k0*q/x0^3)*(1/(1+L/x0)^(3/2)-1/(1-L/x0)^3/2)
% = (L*k0*q/x0^3)*(3*L/x0)
% = 3*k0*q*L^2/x0^4