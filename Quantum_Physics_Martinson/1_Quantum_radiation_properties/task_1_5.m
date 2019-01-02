% nf=int(0:inf)nw*dw
% uwT=hp*w*nw => nw=uwT/(hp*w)
clear
syms uwT hp w dw c T k
nw=uwT/(hp*w)
uwT1=(hp*w^3)/(c^3*sym(pi)^2*(exp((hp*w)/(T*k)) - 1))   % (1.38)
nw=subs(nw,uwT,uwT1)
% nw=w^2/(c^3*pi^2*(exp((hp*w)/(T*k)) - 1))
dnw=nw*dw
% (dw*w^2)/(c^3*pi^2*(exp((hp*w)/(T*k)) - 1))
syms ksi dksi
% ksi=(hp*w)/(T*k) => w=T*k*ksi/hp, dw=T*k*dksi/hp
dnw=subs(dnw,[w dw],[T*k*ksi/hp T*k*dksi/hp])
% (T^3*dksi*k^3*ksi^2)/(c^3*hp^3*pi^2*(exp(ksi) - 1))
pretty(dnw)
nf=int(dnw/dksi,ksi,0,inf)
% (2*T^3*k^3*zeta(3))/(c^3*hp^3*pi^2)
% 2*zeta(3)~2.4
nf=(sym(2.4)*T^3*k^3)/(c^3*hp^3*sym(pi)^2)
% (12*T^3*k^3)/(5*c^3*hp^3*pi^2)
pretty(nf)
digits(4)
nf1=vpa(subs(nf,[k c hp T],[1.38e-23 2.998e8 1.054e-34 10]))
% 2.025e10 1/m^3   -? 9e9
nf2=vpa(subs(nf,[k c hp T],[1.38e-23 2.998e8 1.054e-34 1000]))
% 2.025e16 1/m^3   -? 9e16