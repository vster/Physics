% <x>, <p>, <x^2>, <p^2> for psi0

% (exp(-(m*w*x^2)/(2*hp))*((m*w)/hp)^(1/4))/pi^(1/4)             (2.32)
syms m w x hp real
assume(m>0)
assume(hp>0)
assume(w>0)

psi0(x)=(exp(-(m*w*x^2)/(2*hp))*((m*w)/hp)^(1/4))/pi^(1/4)

ksi1=sqrt(m*w/hp)*x 
syms alfa ksi d_ksi
x1=sqrt(hp/(m*w))*ksi
dx1=sqrt(hp/(m*w))*d_ksi

alfa1=(m*w/(pi*hp))^(1/4)
psi0(ksi)=alfa*exp(-ksi^2)

xm=int(psi0(ksi)'*x1*psi0(ksi),ksi,-inf,inf)
% 0
x2m=int(psi0(ksi)'*x1^2*psi0(ksi),ksi,-inf,inf)
% (2^(1/2)*hp*pi^(1/2)*abs(alfa)^2)/(8*m*w)
x2m=simplify(subs(x2m,alfa,alfa1))
% (2^(1/2)*hp^(1/2))/(8*m^(1/2)*w^(1/2))

% Px(psi0(x))=-i*hp*d/dx(psi0(x)=-i*hp*d/dksi(psi0(ksi)*d_ksi1/dx
f=psi0(ksi)'*(-i*hp*diff(psi0(ksi),ksi)*sqrt(hp/(m*w)))

pxm=int(f,ksi,-inf,inf)
% 0

f2=psi0(ksi)'*(-hp^2*diff(psi0(ksi),ksi,2)*hp/(m*w))
px2m=int(f2,ksi,-inf,inf)
% (2^(1/2)*hp^3*pi^(1/2)*abs(alfa)^2)/(2*m*w)
px2m=simplify(subs(px2m,alfa,alfa1))
% (2^(1/2)*hp^(5/2))/(2*m^(1/2)*w^(1/2))

function Am=OpAm(psi)
syms hp m w p x real
Am=1/sqrt(2*hp*m*w)*(i*OpPx(psi)+m*w*OpX(psi));
Am=expand(Am);
end

function Ap=OpAp(psi)
syms hp m w p x real
Ap=1/sqrt(2*hp*m*w)*(-i*OpPx(psi)+m*w*OpX(psi));
Ap=expand(Ap);
end

function Px=OpPx(psi)
syms hp x real
Px=-1i*hp*diff(psi,x);
end

function Px2=OpPx2(psi)
Px2=OpPx(OpPx(psi));
end

function X=OpX(psi)
syms x real
X=x*psi;
end

function X2=OpX2(psi)
X2=OpX*(OpX(psi));
end


function H=OpH(psi)
syms m w hp real
H=1/(2*m)*(OpPx(OpPx(psi))+(m*w)^2*OpX(OpX(psi)));
end