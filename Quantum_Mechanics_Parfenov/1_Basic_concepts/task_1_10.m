clear
syms k x

% a)
Psi=exp(1i*k*x)
pxm=int(Psi'*OperP(Psi))
% (hp*k^2)/2

% b)
syms sigx
Psi=cos(k*x)
pxm=int(Psi'*OperP(Psi),x,-sigx,sigx)
% 0

% c)
syms a x sigx
Psi=exp(-a*x^2)
pxm=int(Psi'*OperP(Psi),x,-sigx,sigx)
% 0

% Impulse operator
function P=OperP(psi)
syms x hp
P=-1i*hp*diff(psi,x);
end