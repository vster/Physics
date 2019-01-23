% U(x,y,z)=k/2*(x^2+y^2+z^2)
clear
syms x y z hp m0 E k real
syms psi1(x) psi2(y) psi3(z) psi(x,y,z) U(x,y,z)
eq1=laplacian(psi)+2*m0/hp^2*(E-U)*psi
Psi(x,y,z)=psi1(x)*psi2(y)*psi3(z)
eq2=subs(eq1,[psi U],[Psi k/2*(x^2+y^2+z^2)])
% psi2(y)*psi3(z)*diff(psi1(x), x, x) + psi1(x)*psi3(z)*diff(psi2(y), y, y) + psi1(x)*psi2(y)*diff(psi3(z), z, z) + (2*m0*psi1(x)*psi2(y)*psi3(z)*(E - (k*(x^2 + y^2 + z^2))/2))/hp^2
eq3=expand(eq2/(psi1(x)*psi2(y)*psi3(z)))
% diff(psi1(x), x, x)/psi1(x) + diff(psi2(y), y, y)/psi2(y) + diff(psi3(z), z, z)/psi3(z) + (2*E*m0)/hp^2 - (k*m0*x^2)/hp^2 - (k*m0*y^2)/hp^2 - (k*m0*z^2)/hp^2
syms E1 E2 E3
eq4=diff(psi1(x), x, x)/psi1(x)- (k*m0*x^2)/hp^2+ (2*E1*m0)/hp^2
eq5=diff(psi2(x), x, x)/psi2(x)- (k*m0*y^2)/hp^2+ (2*E2*m0)/hp^2
eq4=diff(psi3(x), x, x)/psi3(x)- (k*m0*z^2)/hp^2+ (2*E3*m0)/hp^2
% E=E1+E2+E3

syms n w0
syms psi_n1(x) psi_n2(y) psi_n3(z)
Psi_n1n2n3(x,y,z)=psi_n1(x)*psi_n2(y)*psi_n3(z)
% n1,n2,n3=0,1,2,3...
En=hp*w0*(n+3/2)
% n=n1+n2+n3

% Kn=sum(n1=0:n)(n-n1+1)
% Kn=(n+1)*(n+2)/2 -Degeneration rate
% If n=0 then K0=1 - ground state
% If n=1 then K1=3 - first excited state
% it corresponds to triples of quantum numbers
% (1,0,0) (0,1,0) (0,0,1)
