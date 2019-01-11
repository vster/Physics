% V=m*w^2*x^2/2
% <V>=1/2*m*w^2*int(-inf:inf)psi(n)'*x^2*psi(n)*dx
syms hp m w real
syms psi
syms OpAp(psi) OpAm(psi)
OpX(psi)=sqrt(hp/(2*m*w))*(OpAp+OpAm)*psi(n)
OpPx(psi)=i*sqrt(hp*m*w/2)*(OpAp-OpAm)*psi(n)                  % (2.35)

OpX2=simplify(expand(OpX(OpX)))
% OpX2=hp/(2*m*w)*(OpAp^2    +OpAp*OpAm+ OpAm*OpAp    +OpAm^2) psi(n)


%<V>=h*w/4*int()psi(n)'(OpAp^2   +OpAp*OpAm+ OpAm*OpAp  +OpAm^2)psi(n)dx
%                       psi(n+2)  n*psi(n)   (n+1)psi(n) psi(n-2)
% <V>=h*w/4*(n+(n+1))=h*w/2*(n+1/2) = 1/2*E
