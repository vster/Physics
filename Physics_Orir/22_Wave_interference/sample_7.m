clear
% y_dif=teta_min*D=lam/u*D
syms u lam D
y=u+lam*D/u
dy=diff(y,u)
% 1 - (D*lam)/u^2=0
u0=solve(dy,u)
% u0=(D*lam)^(1/2)