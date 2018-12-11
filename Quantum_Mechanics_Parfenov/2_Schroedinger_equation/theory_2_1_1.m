clear
syms t x real
syms A(t) Psi(x,t) OperA(t)
Am(t)=int(Psi'*A(t)*Psi,x)

DAmt=diff(Am,t)
pretty(DAmt)
% int(conj(diff(Psi(x, t), t))*A(t)*Psi(x, t) + conj(Psi(x, t))*A(t)*diff(Psi(x, t), t) + conj(Psi(x, t))*Psi(x, t)*diff(A(t), t), x)
%  /
% |  /     /  d           \                                        d                                        d      \
% |  | conj| -- Psi(x, t) | A(t) Psi(x, t) + conj(Psi(x, t)) A(t) -- Psi(x, t) + conj(Psi(x, t)) Psi(x, t) -- A(t) | dx
%/   \     \ dt           /                                       dt                                       dt      /

% dPsi'/dt=-1/(i*hp)*OperH(Psi')
% dPsi/dt=1/(i*hp)*OperH(Psi

% DAmt=(-1/(i*hp))*int(OperH(Psi')*A(t)*Psi,x)+int(Psi'*dA/dt*Psi,x)+1/(i*hp)*int(Psi'*A(t)*OperH*Psi)=
% int(Psi'(dA/dt+(1/(i*hp))[OperA,OperH])Psi,x)=int(Psi'*dA/dt*Psi,x)
% then
% dA/dt=1/(i*hp)*[A,H]+dA/dt
% d<A>/dt=1/(i*hp)<[A,H]>+<dA/dt>             (2.3)


