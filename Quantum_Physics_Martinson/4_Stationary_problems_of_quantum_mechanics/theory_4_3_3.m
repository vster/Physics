% Particle passing through a potential barrier

clear
syms x a hp m0 U0 E real
assume(hp>0)
U(x)=piecewise(0<x<a,U0,0)
% 0<E<U0
% x<0, area I
% 0<x<a, area II
% x>a, area III

syms k1 k2 real
syms psi1(x) psi2(x) psi3(x)
eq1=diff(psi1,x,2)+k1^2*psi1
eq2=diff(psi2,x,2)-k2^2*psi2            % (4.47)
eq3=diff(psi3,x,2)+k1^2*psi3
% where k1=sqrt(2*m0*E/hp^2),
% k2=sqrt(2*m0*(U0-E)/hp^2)

psi1sol(x)=dsolve(eq1)
% C4*exp(k1*x*1i) + C5*exp(-k1*x*1i)
psi2sol(x)=dsolve(eq2)
% C8*exp(-k2*x) + C9*exp(k2*x)
psi3sol(x)=dsolve(eq3)
% C10*exp(k1*x*1i) + C11*exp(-k1*x*1i)

syms A1 B1 A2 B2 A3 B3
psi1(x)=A1*exp(k1*x*1i) + B1*exp(-k1*x*1i)
psi2(x)=A2*exp(k2*x) + B2*exp(-k2*x)                    % (4.48)
psi3(x)=A3*exp(k1*x*1i) + B3*exp(-k1*x*1i)

dpsi1(x)=diff(psi1(x),x)
% A1*k1*exp(k1*x*1i)*1i - B1*k1*exp(-k1*x*1i)*1i
dpsi2(x)=diff(psi2(x),x)
% A2*k2*exp(k2*x) - B2*k2*exp(-k2*x)
dpsi3(x)=diff(psi3(x),x)
% A3*k1*exp(k1*x*1i)*1i - B3*k1*exp(-k1*x*1i)*1i

psi1(0)
psi2(0)
dpsi1(0)
dpsi2(0)

psi2(a)
psi3(a)
dpsi2(a)
dpsi3(a)

% A1=1, B3=0
eq4=1+B1-(A2+B2)                                               % (4.49)
eq5=i*k1-i*k1*B1-(k2*A2-k2*B2)
eq6=A2*exp(k2*a)+B2*exp(-k2*a)-A3*exp(i*k1*a)
eq7=k2*A2*exp(k2*a)-k2*B2*exp(-k2*a)-i*k1*A3*exp(i*k1*a)

[B1 A2 B2 A3]=solve([eq4,eq5,eq6,eq7],[B1 A2 B2 A3])
A31=A3
% A3=(k1*k2*exp(-a*k1*1i)*4i)/(k1^2*exp(a*k2) - k1^2*exp(-a*k2) - k2^2*exp(a*k2) + k2^2*exp(-a*k2) + k1*k2*exp(a*k2)*2i + k1*k2*exp(-a*k2)*2i)

syms psi(x)
j=i*hp/(2*m0)*(psi(x)*diff(psi(x)',x)-psi(x)'*diff(psi(x),x)) 

jpad=subs(j,psi(x),exp(k1*x*1i))
% (hp*k1)/m0
syms A3
jpr=subs(j,psi(x),A3*exp(k1*x*1i))
% (A3*hp*k1*conj(A3))/m0
D=abs(jpr/jpad)
% abs(A3*conj(A3))
D=abs(A31)^2
D=(1+((k1^2+k2^2)/(2*k1*k2))^2*sinh(k2*a)^2)^(-1)           % (4.50)

% If k2*a>>1 => exp(-k2*a)<<1
% sinh(k2*a)~1/2*exp(k2*a)
D=(16*k1^2*k2^2/(k1^2+k2^2)^2)*exp(-2*k2*a)

D=subs(D,[k1 k2],[sqrt(2*m0*E/hp^2) sqrt(2*m0*(U0-E)/hp^2)])
D=simplify(D)
% -(16*E*exp(-(2*2^(1/2)*a*(-m0*(E - U0))^(1/2))/hp)*(E - U0))/U0^2
% D=D0*exp(-(2*a/hp)*sqrt(2*m0(U0-E)))
% where D0=16*E/U0*(1-E/U0)~1
D=exp(-(2*a/hp)*sqrt(2*m0*(U0-E)))                   % (4.51)

% D=prod(i)Di~prod(i)exp(-(2*dxi/hp)sqrt(2*m0*(U(xi)-E)))=
% =exp(-sum(i)(2*dxi/hp)*sqrt(2*m0*(U(xi)-E)))             (4.52)

% syms x1 x2
% D=exp(-(2/hp)*int(sqrt(2*m0*(U(x)-E)),x,x1,x2))            % (4.53)
% x1 and x2 - coords at U(x)=E
