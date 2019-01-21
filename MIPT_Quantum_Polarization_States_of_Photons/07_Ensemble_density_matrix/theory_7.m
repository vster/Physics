% Let's consider ensemble of pure states {p(i),|psi(i)>}
% sum(i)p(i)=1, then
% <OpA>=sum(i)p(i)*<psi(i)|OpA|psi(i)=tr(OpA*OpRo)             (28)
% where
% OpRo=sum(i)p(i)|psi(i)><psi(i)| - density operator
% tr(OpM>=sum(i)<i|OpM|i>=sum(i)M(i,i) - operator trace

% Density matrix Ro with elements ro(i,j)=<i|OprRo|j>
% have next propeties
% 1) Hermitage Ro'=Ro;
% 2) not negative Ro>=0;
% 3) Unity trace tr(Ro)=1

% 1) OpRo'=sum(i)p(i)(|psi(i)><psi(i)|)'=
%              sum(i)p(i)*|psi(i)><psi(i)|=OpRo               (29)
% 2) <hi|OpRo|hi>=sum(i)p(i)<hi|psi(i)><psi(i|hi>=
%              sum(i)p(i)|<hi|psi(i)>|^2>=0                   (30)
% 3) tr(OpRo>=sum(i)p(i)*tr(|psi(i)><psi(i)|)=
%              sum(i)p(i)<psi(i)|psi(i)>=sum(i)p(i)=1         (31)

clear
ket_H=[1;0]
ket_V=[0;1]
bra_H=ket_H'
bra_V=ket_V'

Ro=sym('p',[2 2])

% Ro=(ro*H*H ro*H*V)  = 1/2*(1+s3    s1-i*s2)                 (32)
%    (ro*V*H Ro*V*V)        (s1+i*s2 1-s3   )
% where
% si=<sig(i)>=tr(ro*sig(i)) - Stokes parameters in general

% ro>=0 <=> s1^2+s2^2+s3^2<=1

% OpRo=|psi><psi| - pure states
% OrPo~=|psi><psi| - mix states

% tr(ro^2)=1 <=> State is pure

