syms r teta phi
syms x y z
x1=r*sin(teta)*cos(phi)
y1=r*sin(teta)*sin(phi)
z1=r*cos(teta)

eq1=x^2+y^2+z^2-r^2
eq2=x^2+y^2-r^2*sin(teta)^2
eq3=y-x*tan(phi)

r1=solve(eq1,r)
r1=r1(1)
drx=diff(r1,x)
% x/(x^2 + y^2 + z^2)^(1/2)=x/r
drx=x1/r
% cos(phi)*sin(teta)

dry=diff(r1,y)
% y/(x^2 + y^2 + z^2)^(1/2)=y/r
dry=y1/r
% sin(phi)*sin(teta)

phi1=solve(eq3,phi)
% atan(y/x)
dphix=diff(phi1,x)
dphix=simplify(subs(dphix,[x y],[x1 y1]))
% -sin(phi)/(r*sin(teta))

dphiy=diff(phi1,y)
dphiy=simplify(subs(dphiy,[x y],[x1 y1]))
% cos(phi)/(r*sin(teta))

teta1=solve(eq2,teta)
teta1=teta1(1)
% asin((x^2 + y^2)^(1/2)/r)
dtetax=diff(teta1,x)
% x/(r*(x^2 + y^2)^(1/2)*(1 - (x^2 + y^2)/r^2)^(1/2))
dtetax=simplify(subs(dtetax,[x y],[x1 y1]))
% (cos(phi)*sin(teta))/((cos(teta)^2)^(1/2)*(-r^2*(cos(teta)^2 - 1))^(1/2))
pretty(dtetax)
dtetax=cos(phi)/(cos(teta)*r)

dtetay=diff(teta1,y)
% y/(r*(x^2 + y^2)^(1/2)*(1 - (x^2 + y^2)/r^2)^(1/2))
dtetay=simplify(subs(dtetay,[x y],[x1 y1]))
% (sin(phi)*sin(teta))/((r^2*sin(teta)^2)^(1/2)*(1 - sin(teta)^2)^(1/2))
pretty(dtetay)
dtetay=sin(phi)/(r*cos(teta))

% d/dx=drx*d/dr+dphix*d/dphi+dtetax*d/dteta
% d/dy=dry*d/dr+dphiy*d/dphi+dtetay*d/dteta

% OperLz=i*hp*(y*d/dx-x*d/dy)=i*hp*(
%    (y*drx-x*dry)*d/dr+
%    +(y*dphix-x*dphiy)*d/dphi+
%    +(y*dtetax-x*dtetay)*d/dteta)

term1=y*drx-x*dry
term1=simplify(subs(term1,[x y],[x1 y1]))
% 0
term2=y*dphix-x*dphiy
term2=simplify(subs(term2,[x y],[x1 y1]))
% -1
term3=y*dtetax-x*dtetay
term3=simplify(subs(term3,[x y],[x1 y1]))
% 0
% OperLz=-i*hp*d/dphi