% 2D Pit

% U(x,y)=piecwise((x,y) in Om,0,inf)
% psi(x,y)=psi1(x)*psi2(y)               (4.20)

% delta(psi(x,y))+(2*m0/hp^2)*E*psi(x,y)=0
clear
syms x y m0 hp E real
syms psi1(x) psi2(y)
eq1=psi2(y)*diff(psi1(x),x,2)+psi1(x)*diff(psi2(y),y,2)...
    +(2*m0/hp^2)*E*psi1(x)*psi2(y)

eq1=expand(simplify(eq1/(psi1(x)*psi2(y))))
% diff(psi1(x), x, x)/psi1(x) + diff(psi2(y), y, y)/psi2(y) +
%       + (2*E*m0)/hp^2

syms E1 E2
eq21= 1/psi1(x)*diff(psi1(x),x,2)+2*m0/hp^2*E1
eq22= 1/psi2(y)*diff(psi2(y),y,2)+2*m0/hp^2*E2
% E=E1+E2

eq21=expand(eq21*psi1(x))
% diff(psi1(x), x, x) + (2*E1*m0*psi1(x))/hp^2            (4.22)
eq22=expand(eq22*psi2(y))
% diff(psi2(y), y, y) + (2*E2*m0*psi2(y))/hp^2

syms n1 n2 a1 a2
psi1n1(x)=sqrt(2/a1)*sin(pi*n1*x/a1)
psi2n2(y)=sqrt(2/a2)*sin(pi*n2*y/a2)
% n1,n2=1,2,3...

psin1n2(x,y)=psi1n1(x)*psi2n2(y)                
% 2*sin((pi*n1*x)/a1)*sin((pi*n2*y)/a2)*(1/a1)^(1/2)*(1/a2)^(1/2)  (4.23)
% 0<x<a1, 0<y<a2, n1,n2=1,2,3...

syms a
psin1n2(x,y)=subs(psin1n2(x,y),[a1 a2],[a a])
% (2*sin((pi*n1*x)/a)*sin((pi*n2*y)/a))/a

syms pi
E1n1=(hp^2*n1^2*pi^2)/(2*a1^2*m0)
E2n2=(hp^2*n2^2*pi^2)/(2*a2^2*m0)

En1n2=simplify(E1n1+E2n2)
% (hp^2*pi^2*(a1^2*n2^2 + a2^2*n1^2))/(2*a1^2*a2^2*m0)    (4.24)
% n1,n2=1,2,3...
pretty(En1n2)

% Put a1=a2=a, then
En1n2=simplify(subs(En1n2,[a1 a2],[a a]))
% (hp^2*pi^2*(n1^2 + n2^2))/(2*a^2*m0), n1,n2=1,2,3...       (4.25)