% We first prove that
% [OperH,OperX]=i*hp/m0*OperPx
clear
syms x hp m real
syms psi(x)

% [OperH,OperX]psi
SwHX=simplify(OperH(OperX(psi))-OperX(OperH(psi)))
% -(hp^2*diff(psi(x), x))/m
px=OperPx(psi)
% -hp*diff(psi(x), x)*1i
d=SwHX/px
% -(hp*1i)/m
% And so
% [OperH,OperX]=-(hp*1i)/m*OperPx =>
% OperPx=1i*m/hp*[OperH,OperX]

% pxm=int(RN)psi'*OperPx(psi)dx
% Since the state of a particle is stationary,
% OperH -> OperE
pxm=(1i*m/hp)*int(psi'*OperE(OperX(psi))-psi'*OperX(OperE(psi)),x)
% 0

function H=OperH(psi)
syms x m hp U(x)
H=-hp^2/(2*m)*diff(psi,x,2)+U*psi;
H=simplify(H);
end

function E1=OperE(psi)
syms E
E1=E*psi;
end

function X=OperX(psi)
syms x real
X=x*psi;
end

function Px=OperPx(psi)
syms hp x real
Px=-1i*hp*diff(psi,x);
end