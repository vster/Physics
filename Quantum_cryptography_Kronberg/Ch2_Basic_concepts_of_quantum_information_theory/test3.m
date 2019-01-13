clear
n=2
% |phi>
ket_phi=sym('phi',[n,1])
% <phi|
bra_phi=ket_phi'

% |phi><phi|
OpP=ket_phi*bra_phi
OpP'
% OpP=OpP'
simplify(OpP^2)

