% Spherically symmetric potential well.

clear
syms r phi teta r0 E hp m real
syms pi
syms psi(r,phi,teta) U(r)

% U(r)=piecewise(r<r0,0,inf)

% Nabla2=1/r^2*d/dr(r^2*d/dr)+1/(r^2*sin(teta))*d/dteta(sin(teta)*d/dteta)+
%                 +1/(r^2*sin(teta)^2)*d2/dphi2
syms hp phi teta
eq1=-hp^2/(2*m)*(1/r^2*diff(r^2*diff(psi,r),r)+...
      1/(r^2*sin(teta))*diff(sin(teta)*diff(psi,teta),teta)+...
      1/(r^2*sin(teta)^2)*diff(psi,phi,2))+U(r)*psi-E*psi

syms R(r) Y(teta,phi)
eq2=subs(eq1,psi,R(r)*Y(teta,phi))

eq3=eq2/(R(r)*Y(teta,phi))

eq4=expand(eq3*(2*m*r^2/hp^2))
eq5= (r^2*diff(R(r), r, r))/R(r) + (2*r*diff(R(r), r))/R(r) + (2*E*m*r^2)/hp^2
eq6=  diff(Y(teta, phi), phi, phi)/(sin(teta)^2*Y(teta, phi)) + diff(Y(teta, phi), teta, teta)/Y(teta, phi) + (cos(teta)*diff(Y(teta, phi), teta))/(sin(teta)*Y(teta, phi)) 

syms r psi(r)
eq7=subs(eq5,R(r),psi(r))

eq8=expand(eq7*psi(r)/r^2)
% (2*diff(psi(r), r))/r + diff(psi(r), r, r) + (2*E*m*psi(r))/hp^2  (2.20)

eq9=(2*diff(psi(r), r))/r + diff(psi(r), r, r) + (2*E*m*psi(r))/hp^2
syms X(r)
eq10=expand(simplify(subs(eq9,psi(r),X(r)/r)))
eq11=expand(eq10*r)
% diff(X(r), r, r) + (2*E*m*X(r))/hp^2
% k=sqrt(2*E*m*)/hp
syms k
eq12=diff(X, r, r) + k^2*X
% C6*exp(k*r*1i) + C7*exp(-k*r*1i)
