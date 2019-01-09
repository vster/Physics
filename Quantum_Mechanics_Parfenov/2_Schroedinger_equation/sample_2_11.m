clear
syms t x m hp a real
assume(m>0)
syms pi
syms n integer
syms Psi1(x) Psi2(x)
Psi(x)=1/sqrt(2)*(Psi1+Psi2)

Em=int(Psi'*OperH(Psi),x)
Em=expand(Em)
syms E1 E2
Em=1/2*(E1+E2)

E(n)=pi^2*hp^2*n^2/(2*a^2*m)
Em=1/2*(E(1)+E(2))
% (5*hp^2*pi^2)/(4*a^2*m)

E2m=int(Psi'*OperH2(Psi),x)
E2m=expand(E2m)

E2m1=int(Psi1'*OperH2(Psi1),x)
E2m=1/2*(E1^2+E2^2)

E2m=1/2*(E(1)^2+E(2)^2)
% (17*hp^4*pi^4)/(8*a^4*m^2)

sigE=simplify(sqrt(E2m-Em^2))
% (3*hp^2*pi^2)/(4*a^2*abs(m))
sigE/Em
% 3/5
% sigE=3/5*Em

xm=int(Psi'*OperX(Psi),x)
xm=expand(xm)
% int((x*conj(Psi1(x))*Psi1(x))/2, x) + int((x*conj(Psi1(x))*Psi2(x))/2, x) + int((x*conj(Psi2(x))*Psi1(x))/2, x) + int((x*conj(Psi2(x))*Psi2(x))/2, x)
Psi(n)=sqrt(2/a)*sin(pi*x*n/a)*exp(-i*pi^2*n^2*hp*t/(2*a^2*m))
Psi1=Psi(1)
% 2^(1/2)*sin((pi*x)/a)*exp(-(hp*t*pi^2*1i)/(2*a^2*m))*(1/a)^(1/2)
Psi2=Psi(2)
% 2^(1/2)*sin((2*pi*x)/a)*exp(-(hp*t*pi^2*2i)/(a^2*m))*(1/a)^(1/2)
I1=int(Psi1'*x*Psi1,x,0,a)
% a/2
I2=int(Psi2'*x*Psi2,x,0,a)
% a/2
I3=int(Psi1'*x*Psi2,x,0,a)
% -(16*a*exp(-(hp*t*pi^2*3i)/(2*a^2*m)))/(9*pi^2)
I4=int(Psi2'*x*Psi1,x,0,a)
% -(16*a*exp((hp*t*pi^2*3i)/(2*a^2*m)))/(9*pi^2)
xm=1/2*(I1+I2+I3+I4)
xm=simplify(xm)
% a/2 - (8*a*exp(-(hp*t*pi^2*3i)/(2*a^2*m)))/(9*pi^2) - (8*a*exp((hp*t*pi^2*3i)/(2*a^2*m)))/(9*pi^2)
xm= a/2-(16*a/(9*pi^2))*cos((hp*t*pi^2*3)/(2*a^2*m))
pretty(xm)

function H=OperH(psi)
syms x m hp
H=-hp^2/(2*m)*diff(psi,x,2);
H=simplify(H);
end

function H2=OperH2(psi)
H2=OperH(OperH(psi));
end

function X=OperX(psi)
syms x real
X=x*psi;
end
