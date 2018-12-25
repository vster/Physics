% 2.3. Overcoming a potential barrier

% 2.3.1. Barrier of infinite length.
% x<0
syms x a b c kn k hp m
syms E U0
psi1=b*exp(i*kn*x)+c*exp(-i*kn*x)
% where
% kn=sqrt(2*m*(E+U0))/hp
% x>0
psi2=a*exp(i*k*x)
% where
% k=sqrt(2*m*E)/hp

% / Psi1(0)=Psi2(0) 
% \ Psi1'(0)=Psi2'(0)
subs(psi1,x,0)
subs(psi2,x,0)
subs(diff(psi1,x),x,0)
subs(diff(psi2,x),x,0)
% / a=b+c                   (2.12)
% \ a*k=(b-c)*kn

jc=k*hp*abs(c)^2/m
jb=k*hp*abs(b)^2/m
R=jc/jb
% abs(c)^2/abs(b)^2

% From (2.12) => c/b=(k-kn)/(k+kn)
% R=|c|^2/|b|^2=(c/b)^2=((kn-k)/(kn+k))^2
R=((kn-k)/(kn+k))^2
R=subs(R,[kn, k],[sqrt(2*m*(E+U0))/hp, sqrt(2*m*E)/hp])
R=simplify(R)
pretty(R)
R =((sqrt(E+U0)-sqrt(E))/(sqrt(E+U0)+sqrt(E)))^2            % (2.13)

% 1) E=0
R1=subs(R,E,0)
% 1

% 2) 0<E<<U0
R =((sqrt(E+U0)-sqrt(E))/(sqrt(E+U0)+sqrt(E)))^2
R=(sqrt(E+U0)/(sqrt(E+U0)+sqrt(E))-sqrt(E)/(sqrt(E+U0)+sqrt(E)))^2
% R ~ (1-sqrt(E/U0))^2

% 3) E>>U0
% R~U0/(4*E) -?  (U0^2/(16*E^2) -?)

% 4) -U0<E<0
psi2=exp(i*sqrt(2*m*E)*/hp)
% E<0 > k=sqrt(2*m*E)/hp is imaginary
% k=i*k1
% where k1 is real number
% then
% psi2=a*exp(-k1*x)
% The probability density of detecting such an electron 
% outside the metal is non-zero and is equal to
% p=|Psi|^2=a^2*exp(-2*k1*x)