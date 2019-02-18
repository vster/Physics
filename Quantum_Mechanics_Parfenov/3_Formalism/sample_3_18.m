clear
format short
ket1=[1;0]
ket2=[0;1]

% |+>
ket_p=1/sqrt(2)*(ket1+ket2)

% |+><+|
pr=ket_p*ket_p'
%   0.5000    0.5000
%   0.5000    0.5000
pr^2
%    0.5000    0.5000
%    0.5000    0.5000