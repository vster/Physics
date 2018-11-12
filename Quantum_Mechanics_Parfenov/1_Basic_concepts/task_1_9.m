syms hi k x real
Psi=cos(hi)*exp(i*k*x)+sin(hi)*exp(-i*k*x)
px=OperP(Psi)

nf=int(simplify(Psi'*Psi),x,-inf,inf)

pxm=int(Psi'*k*Psi,x,-inf,inf)

% ...?