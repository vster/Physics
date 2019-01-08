% Three-dimensional potential pit

% G={(x,y,z):0<x<a1,0<y<a2,0<z<a3}
% U(x,y,z)=piecewise((x,y,z) in G,0,inf)

clear
syms x y z m0 hp real
syms psi1(x) psi2(y) psi3(z)
psi(x,y,z)=psi1(x)*psi2(y)*psi3(z)

syms E1 E2 E3
eq1=diff(psi1(x), x, x) + (2*E1*m0*psi1(x))/hp^2==0
eq2=diff(psi2(y), y, y) + (2*E2*m0*psi2(y))/hp^2==0
eq3=diff(psi3(z), z, z) + (2*E3*m0*psi3(z))/hp^2==0
% where E1+E2+E3=E

syms a1 a2 a3 n1 n2 n3
psi1n1(x)=sqrt(2/a1)*sin(pi*n1*x/a1)
psi2n2(x)=sqrt(2/a2)*sin(pi*n2*x/a2)
psi3n3(x)=sqrt(2/a3)*sin(pi*n3*x/a3)

psin1n2n3(x,y,z)=simplify(psi1n1(x)*psi2n2(x)*psi3n3(x))
% 2*2^(1/2)*sin((pi*n1*x)/a1)*sin((pi*n2*x)/a2)*sin((pi*n3*x)/a3)*
%               *(1/a1)^(1/2)*(1/a2)^(1/2)*(1/a3)^(1/2)

syms pi
E1n1=(hp^2*n1^2*pi^2)/(2*a1^2*m0)
E2n2=(hp^2*n2^2*pi^2)/(2*a2^2*m0)
E3n3=(hp^2*n3^2*pi^2)/(2*a3^2*m0)

En1n2n3=E1n1+E2n2+E3n3
% (hp^2*pi^2)/(2*m0)((n1/a1)^2+(n2/a2)^2+(n3/a3)^2)    (4.27)
% Put a1=a2=a3=a
syms a
En1n2n3=simplify(subs(En1n2n3,[a1 a2 a3],[a a a]))
% (hp^2*pi^2*(n1^2 + n2^2 + n3^2))/(2*a^2*m0)              (4.28)
% n1,n2,n3=1,2,3...
