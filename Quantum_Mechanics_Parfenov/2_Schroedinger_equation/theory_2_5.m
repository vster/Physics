% Harmonic Oscillator

clear
syms k x
F=-k*x
V(x)=-int(F,x)
% (k*x^2)/2+V0

% If V(x)=0 then
% OpH=OpEk+OpU=-(hp^2/2*m)*(d2/dx2)+1/2*k*x^2
syms m hp E real
syms psi(x)
eq1=-hp^2/(2*m)*diff(psi,x,2)+1/2*k*x^2*psi-E*psi                % (2.25)
psiSol=dsolve(eq1)

% psin(x)=An*Hn*(beta*x)*exp(-beta*x^2/2),  n=0,1,2,...        (2.26)
% where Hn is Hermite polynomial of degree n
% Hn(ksi)=(-1)^n*exp(ksi^2)*d^n/dksi^n(exp(-ksi^2))
% beta^2=w*m/hp
% An=1/sqrt(2^n*n!)*(m*w/(pi*hp)^(1/4), w^2=k/m
syms w n
E(n)=hp*w*(n+1/2)

% Rewrite (2.25) in another form
% 1/(2*m)*(p^2+(m*w*x)^2)psi=E*psi
% where p=-i*hp*d/dx - momentum operator.

% p and x are noncommuting operators, 
% so additional variables are introduced
% a_plus/minus=1/sqrt(2*hp*m*w)*(-+i*p+m*w*x)
% a_minus*a_plus=1/(2*hp*m*w)*(i*p+m*w*x)*(-i*p+m*w*x)

syms p
a_plus=1/sqrt(2*hp*m*w)*(-i*p+m*w*x)
a_minus=1/sqrt(2*hp*m*w)*(i*p+m*w*x)
am_ap=a_minus*a_plus
% -((m*w*x + p*1i)*(p*1i - m*w*x))/(hp*m*w*2)
% =1/(hp*m*w*2)*(p^2+(m*w*x)^2-i*m*w*(x*p-p*x))
%                =OpH           [x,p]=i*hp
% a-*a+=1/(hp*w)*H+1/2 or H=h*w*(a-*a+-1/2)             (2.28)
% [a-,a+]=1
% H=hp*w*(a_plus*a_minus+1/2)                                    (2.29)
% hp*w*(a+-*a-+ +- 1/2)psi=E*psi                        (2.30)
eq11=hp*w*(a_plus*a_minus+1/2)*psi(x)-E*psi(x)
% a_minus(phi0)=0                                              (2.31)

% 1/sqrt(2*hp*m*w)*(i*p+m*w*x)psi0=0 =>
% dpsi0/dx=-m*w/hp*x*psi0
syms psi0(x)
eq2=diff(psi0,x)+m*w/(hp)*x*psi0
psi0sol=dsolve(eq2)
% C13*exp(-(m*w*x^2)/(2*hp))
syms A pi
psi0=A*exp(-(m*w*x^2)/(2*hp))
In=int(psi0^2,x,-inf,inf)
eq3=(A^2*pi^(1/2))/((m*w)/hp)^(1/2)==1
A1=solve(eq3,A)
% ((m*w)/hp)^(1/4)/pi^(1/4)
A1=A1(1)
psi0=subs(psi0,A,A1)
% (exp(-(m*w*x^2)/(2*hp))*((m*w)/hp)^(1/4))/pi^(1/4)             (2.32)

% Subst (2.32) to (2.30) and use a_minus(psi0)=0, then
% E0=1/2*hp*w
% psi(x,n)=A(n)*(a_plus)^n*psi0(x), E(n)=(n+1/2)*hp*w
% a_plus(psi(n))=sqrt(n^2+1)*psi(n+1)
% a_minus(psi(n))=sqrt(n)*psi(n-1)
% then A(n)=1/sqrt(n!).
% Also note, that
% a_plus*a_minus*psi(n)=n*psin(n) and
% a_minus*a_plus*psi(n)=(n+1)psi(n)

% Only for n=0  sigx*sigp=hp/2
% for n>0 sigx*sigp=(2*n+1)hp/2

% The coherent states Psi(alfa) are eigenfunctions 
% of the annihilation operator
% a_minus*Psi(alfa)=alfa*Psi(alfa)                            (2.33)
% where alfa is alfa(t)=exp(-i*w*t)*alfa(0)

% psi(alfa)=exp(-|alfa|^2/2)*sum(n=0:inf)(alfa^n/sqrt(n!))psi(n)   (2.34)
% where you can find the probability of the oscillator being in the nth state
% P(n)=exp(-|alfa|^2)*|alfa|^(2*n)/n!
