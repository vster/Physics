syms k0 q r L teta
V=k0*q/(r-(L/2)*cos(teta))+k0*(-q)/(r+(L/2)*cos(teta))
V=simplify(V)
% -(4*L*k0*q*cos(teta))/(L^2*cos(teta)^2 - 4*r^2)
pretty(V)
% If r>>L
V=(4*L*k0*q*cos(teta))/(4*r^2)
syms p x y z
V=k0*p*cos(teta)/r^2
V=k0*p*x/r^3

r1=sqrt(x^2+y^2+z^2)
Ey=-diff(V,r)*diff(r1,y)
% (3*k0*p*x*y)/(r^4*(x^2 + y^2 + z^2)^(1/2))
% (3*k0*p*x*y)/r^5
% (3*k0*p*cos(teta)*sin(teta)/r^3

Ex=-diff(V,r)*diff(r1,x)
% (3*k0*p*x^2)/(r^4*(x^2 + y^2 + z^2)^(1/2))
% (3*k0*p*x^2)/r^5
% (3*k0*p*cos(teta)^2)/r^3

Ey1=cdiffy(V,r1)
% -(3*k0*p*x*y)/(x^2 + y^2 + z^2)^(5/2)
% -(3*k0*p*x*y)/r^5
% -(3*k0*p*cos(teta)*sin(teta)/r^3

Ex1=cdiffx(V,r1)
% -(3*k0*p*x^2)/(x^2 + y^2 + z^2)^(5/2)
% -(3*k0*p*x^2)/r^5
% -(3*k0*p*cos(teta)^2)/r^3

function dux=cdiffx(u,phi)
syms r x y 
dur=diff(u,r);
drx=diff(phi,x);
dux=dur*drx;
dux=simplify(subs(dux,r,phi));
end

function duy=cdiffy(u,phi)
syms r x y 
dur=diff(u,r);
dry=diff(phi,y);
duy=dur*dry;
duy=simplify(subs(duy,r,phi));
end