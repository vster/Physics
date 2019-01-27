% Quantum-mechanical description of hydrogen-like atoms
clear
syms Z e eps0 r
U(r)=-Z*e^2/(4*pi*eps0*r)                  % (5.16)

% OpH(psi)=E*psi                             (5.17a)
% where
% OpH=-(hp^2/(2*m0))*laplacian()+OpU         (5.17b)

% psi=psi(r,teta,phi)
% laplacian()=laplacian(r)+(1/r^2)*laplacian(teta,phi)
% laplacian(r)=1/r^2*d/dr(r^2*d/dr)          (5.18)
% laplacian(teta,phi)=1/sin(teta)*d/dteta(sin(teta)*d/dteta)+
%                  +1/sin(teta)^2*d2/dphi2           (5.19)

% OpL^2=-hp^2*laplacian(teta,phi)

% -hp^2/(2*m0)*laplacian_r(psi)+1/(2*m0*r^2)*OpL^2(psi)-
%            -(x*e^2/(4*pi*eps0*r))psi=E*psi       (5.20)

% psi=X(r)*Y(teta,phi)                             (5.21)

% OpL^2(Y(l,m))=l*(l+1)*hp^2*Y(l,m)                (5.22)

% l=0,1,2... - orbital (azimuth) quantum number
% m=0,+-1,+-2,...,+-l  - magnetic quantum number

syms hp m0 e r teta phi eps0 E real
syms l m Z integer
syms X(r) Y(teta,phi)
eq1=-(hp^2/(2*m0))*(1/r^2)*diff(r^2*diff(X,r),r)+...
    (l*(l+1)*hp^2/(2*m0*r^2)-Z*e^2/(4*pi*eps0*r))*X-E*X
% Xsol=dsolve(eq1)
syms R(r)
eq2=subs(eq1,X,R/r)
eq2=simplify(eq2)
% Rsol=dsolve(eq2)
% Put ro=Z*r/a, eps=-1/Z^2*E/W, eps>0             (5.26)
% a=4*pi*eps0*hp^2/(m0*e^2)
% W=Ei=1/2*e^2/(4*pi*eps0*a)=hp^2/(2*m0*a^2)=m0^e^4/(32*pi^2*eps0^2*hp^2)
% Then from (5.25) we get
syms ro eps a W real
syms R(ro)
eq3=diff(R,ro,2)+(2/ro-l*(l+1)/ro^2-eps)*R            % (5.27)
% Rsol=dsolve(eq3)

% Put R(ro)=u(ro)*exp(-alfa*ro), alfa=sqrt(eps)         (5.28)
syms alfa
eq4=subs(eq3,eps,alfa^2)
% diff(R(ro), ro, ro) - R(ro)*(alfa^2 - 2/ro + (l*(l + 1))/ro^2)    (5.29)
syms u(ro) 
eq5=subs(eq4,R,u(ro)*exp(-alfa*ro))
eq6=expand(eq5/exp(-alfa*ro))
% (2*u(ro))/ro - 2*alfa*diff(u(ro), ro) + diff(u(ro), ro, ro) - (l*u(ro))/ro^2 - (l^2*u(ro))/ro^2

syms a(k)
u1(ro)=symsum(a(k)*ro^(k+l+1),k,0,inf)                  % (5.30)
eq7=subs(eq6,u,u1)
eq7=simplify(eq7)
% (2*symsum(ro^(k + l + 1)*a(k), k, 0, Inf))/ro - 2*alfa*symsum(ro^(k + l)*a(k)*(k + l + 1), k, 0, Inf) + symsum(ro^(k + l - 1)*a(k)*(k + l)*(k + l + 1), k, 0, Inf) - (l^2*symsum(ro^(k + l + 1)*a(k), k, 0, Inf))/ro^2 - (l*symsum(ro^(k + l + 1)*a(k), k, 0, Inf))/ro^2

eq8=symsum(a(k)*((k+l+1)*(k+l)-l*(l+1))*ro^(k+l+1),k,0,inf)+...
    symsum((2-2*alfa*(k+l+1))*ro^(k+l),k,0,inf)           % (5.31)

eq9=symsum((a(k+1)*((k+l+2)*(k+l+1)-l*(l+1))+...
        a(k)*(2-2*alfa*(k+l+1)))*ro^(k+l),k,0,inf)
    
% a(k+1)=a(k)*(2*alfa*(k+l+1)-2)/((k+l+2)*(k+l+1)-l*(l+1))   (5.32)
% a(k+1)~2*alfa*a(k)/k
% sum(k=0:inf)(2*alfa)^k*ro^k/k!=exp(2*alfa*ro)
% u(ro)~ro^(l+1)*exp(2*alfa*ro)
