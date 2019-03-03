% h = 20 m
% dw/w0 -?

syms hp w c
E=hp*w
mG=E/c^2
% (hp*w)/c^2

syms G r dr Mz
% dE=d(hp*w)=(FG*dr)=-G*(hp*w/c^2)*Mz*dr/r^2
dE=-G*(hp*w/c^2)*Mz*dr/r^2
% dw/w=-G*(Mz/c^2)*dr/r^2
% log(w/w0)=
syms Rz h
I=int(-G*(Mz/c^2)/r^2,r,Rz,Rz+h)
% piecewise(0 <= Rz + h & Rz <= 0, -(G*Inf*Mz)/c^2, Rz + h < 0 | 0 < Rz, (G*Mz*(1/(Rz + h) - 1/Rz))/c^2)
% I=(G*Mz*(1/(Rz + h) - 1/Rz))/c^2
% If h<<Rz then
% ~-g*h/c^2

% as g*h/c^2<<1
% w=w0*exp(-g*h/c^2)~w0(1-g*h/c^2)
% Dw/w0=(w0-w)/w0~g*h/c^2
% Dw/w0=rr
syms g
rr=g*h/c^2
digits(2)
rr=vpa(subs(rr,[g h c],[9.8 20 3e8]))
% 2.2e-15