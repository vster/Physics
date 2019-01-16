% Potential well of finite depth

% One-dimensional potential pit with one infinitely high wall

clear
syms x a hp m0 U0 E real
assume(hp>0)
U(x)=piecewise(x<0,inf,0<x<a,0,x>a,U0)
% Area I, 0<x<a
% Area II, x>a
% E<U0

syms k1 k2 real
syms psi1(x) psi2(x)
% Area I
eq1=diff(psi1,x,2)+(2*m0/hp^2)*E*psi1            % (4.56)
eq2=diff(psi2,x,2)-(2*m0/hp^2)*(U0-E)*psi2       % (4.57)

% k1=sqrt(2*m0*E/hp^2)
% k2=sqrt(2*m0*(U0-E)/hp^2)                      (4.58)

eq3=diff(psi1,x,2)+k1^2*psi1                     % (4.59a)
eq4=diff(psi2,x,2)-k2^2*psi2                     % (4.59b)

psi1sol=dsolve(eq3)
% C1*cos(k1*x) + C2*sin(k1*x)
psi2sol=dsolve(eq4)
% C3*exp(-k2*x) + C4*exp(k2*x)

syms A B C alfa 
psi1(x)=A*sin(k1*x+alfa)                        % (4.60a)
psi2(x)=B*exp(k2*x)+C*exp(-k2*x)                % (4.60b)
% If x->inf psi2->inf => B=0
% psi1(0)=0 => alfa=0
psi1(x)=A*sin(k1*x)
psi2(x)=C*exp(-k2*x)

dpsi1(x)=diff(psi1,x)
% A*k1*cos(k1*x)
dpsi2(x)=diff(psi2,x)
% -C*k2*exp(-k2*x)

eq5=psi1(a)-psi2(a)
% A*sin(a*k1) = C*exp(-a*k2)                   % (4.61)
eq6=dpsi1(a)-dpsi2(a)
% A*k1*cos(a*k1) = -C*k2*exp(-a*k2)
% tan(k1*a)=-k1/k2                             % (4.62)
% sin(k1*a)=+-1/sqrt(1+cot(k1*a)^2)=+-k1/sqrt(k1^2+k2^2)
% As k1^2+k2^2=(2*m0/hp^2)*U0 so
% sin(k1*a)=+-sqrt(hp^2/(2*m0*a^2*U0))*k1*a               (4.63)
% As tan(k1*a)<0 then 
% pi/2+pi*m<k1*a<pi*pi*m
% sqrt(hp^2/(2*m0*a^2*U0))<1/(pi/2)
% from here we get
% U0*a^2>pi^2*hp^2/(8*m0)                                 (4.64)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          


