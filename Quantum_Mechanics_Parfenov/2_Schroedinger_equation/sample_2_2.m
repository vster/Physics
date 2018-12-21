% m, E, U=0

% If k=sqrt(2*m*E)/hp
% then
% d2psi/dx2+k^2*psi=0
syms x k real
syms psi(x)
eqn=diff(psi,x,2)+k^2*psi
psiSol=dsolve(eqn)
% C41*cos(k*x) + C42*sin(k*x)
% or
syms A B real
psi=A*exp(i*k*x)+B*exp(-i*k*x)
% direction of moving is positive => B=0
psi=subs(psi,B,0)
% A*exp(k*x*1i)

I=int(psi'*psi,x,-inf,+inf)
% A^2*Inf => A=0

pm=int(psi'*OperPx(psi),x)/int(psi'*psi,x)
% hp*k

% Impulse operator
function Px=OperPx(psi)
syms x hp real
Px=-1i*hp*diff(psi,x);
end