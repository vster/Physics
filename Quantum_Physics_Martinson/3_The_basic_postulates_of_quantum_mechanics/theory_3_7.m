% Simultaneous measurement of different physical quantities
clear
syms n Psi(n)
Psi1=OperA(OperB(Psi(n),n),n)
% Psi(n)*a(n)*b(n)
Psi2=OperB(OperA(Psi(n),n),n)
% Psi(n)*a(n)*b(n) 
% OperA(OperB(Psi(n),n),n)=OperB(OperA(Psi(n),n),n)

% OperA(OperB(Psi))=OperB(OperA(Psi))         (3.76)
% OperA*OperB=OperB*OperA or 
% OperA*OperB-OperB*OperA=0                   (3.77)
% [OperA,OperB]=OperA*OperB-OperB*OperA       (3.78)

syms x hp real
syms Psi(x)
Sw1=OperX(OperPx(Psi))-OperPx(OperX(Psi))
Sw1=expand(Sw1)
% hp*Psi(x)*1i =>
% [OperX,OperPx]=1i*hp ~= 0                   (3.79)

% D1=<(dx^2)>=<(x-<x>)^2>=<x^2>-(<x>)^2
% D2=<(dp^2)>=<(px-<px>)^2>=<px^2>-(<px>)^2
% Put <x>=0, <px>=0

% D1=<dx^2>=<x^2>
D1=int(Psi'*x^2*Psi,x,-inf,inf)
% D2=<(dpx)^2>=<px^2>
D2=-hp^2*int(Psi'*diff(Psi,x,2),x,-inf,inf)

syms alfa real
J(alfa)=int((alfa*x*Psi+diff(Psi,x))*(alfa*x*Psi'+diff(Psi',x)),x,-inf,inf)
J(alfa)=expand(J(alfa))
% int(alfa^2*x^2*conj(Psi(x))*Psi(x), x, -Inf, Inf) + int(alfa*x*conj(diff(Psi(x), x))*Psi(x), x, -Inf, Inf) + int(alfa*x*conj(Psi(x))*diff(Psi(x), x), x, -Inf, Inf) + int(conj(diff(Psi(x), x))*diff(Psi(x), x), x, -Inf, Inf)
% J(Alfa)=A*alfa^2-B*alfa+C
% ...
% A=D1>0
% B=1
% C=1/hp^2*D2>0
% 4*A*C>=B^2                  (3.81)
% 4*D1*D2>=hp^2
% sqrt(<(dx)^2>)*sqrt(<(dpx)^2>)>=hp/2            (3.82)
% dx*dpx>=hp/2                  (3.83)


function A=OperA(psi,n)
syms a(n)
A=a(n)*psi;
end

function B=OperB(psi,n)
syms b(n)
B=b(n)*psi;
end