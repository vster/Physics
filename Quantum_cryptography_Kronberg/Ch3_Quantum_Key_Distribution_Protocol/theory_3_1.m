% General protocol scheme

% Signal state transmission

ket0=[1;0]
ket1=[0;1]

ket_x=ket0
bra_x=ket_x'
ket_y=ket1
bra_y=ket_y'
ket_u=1/sqrt(2)*(ket0+ket1)
bra_u=ket_u'
ket_v=1/sqrt(2)*(ket0-ket1)                   % (3.1)
bra_v=ket_v'

(ket_x'*ket_u)^2
(ket_x'*ket_v)^2
% =1/2                                         (3.2)
(ket_y'*ket_u)^2
(ket_y'*ket_v)^2
% =1/2

MP0=ket_x*bra_x
MP1=ket_y*bra_y
MD0=ket_u*bra_u
MD1=ket_v*bra_v                              % (3.3)