% General protocol scheme

% Signal state transmission

ket0=[1;0]
ket1=[0;1]

ket_x=ket0
ket_y=ket1
ket_u=1/sqrt(2)*(ket0+ket1)
ket_v=1/sqrt(2)*(ket0-ket1)                   % (3.1)

(ket_x'*ket_u)^2
(ket_x'*ket_v)^2
% =1/2                                         (3.2)
(ket_y'*ket_u)^2
(ket_y'*ket_v)^2
% =1/2

MP0=ket_x*ket_x'
MP1=ket_y*ket_y'
MD0=ket_u*ket_u'
MD1=ket_v*ket_v'                              % (3.3)