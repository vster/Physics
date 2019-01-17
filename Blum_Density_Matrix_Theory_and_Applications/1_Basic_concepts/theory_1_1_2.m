% Polarization vector

ket_p=[1;0]
ket_m=[0;1]
bra_p=ket_p'
bra_m=ket_m' 

% Pi=<sigi>                             (1.1.4)
% i=x,y,z
% <sigi>=<hi|sigi|hi>                   (1.1.5)

% Pauli Matrix
sigx=[0 1;1 0]
sigy=[0 -i;i 0]
sigz=[1 0;0 -1]                       % (1.1.6)

Px=bra_p*sigx*ket_p
Py=bra_p*sigy*ket_p
Pz=bra_p*sigz*ket_p                   % (1.1.7a)
% [0 0 1]

Px=bra_m*sigx*ket_m
Py=bra_m*sigy*ket_m
Pz=bra_m*sigz*ket_m                   % (1.1.7b)
% [0 0 -1]

syms teta delta real
a1=cos(teta/2)
a2=exp(i*delta)*sin(teta/2)            % (1.1.8)
% where delta - relative phase coefficients a1 and a2

ket_hi=[a1;a2]
bra_hi=ket_hi'

Px=simplify(bra_hi*sigx*ket_hi)
% cos(delta)*sin(teta)                               (1.1.10a)
Py=simplify(bra_hi*sigy*ket_hi)
% sin(delta)*sin(teta)                               (1.1.10b)
Pz=simplify(bra_hi*sigz*ket_hi)
% cos(teta)                                          (1.1.10c)

P=simplify(sqrt(Px^2+Py^2+Pz^2))
% 1                                                  (1.1.11)

% |ket_p,x>
ket_hi1=subs(ket_hi,[teta delta],[pi/2 0])
%  2^(1/2)/2         = 1/sqrt(2)*[1;1]               (1.1.12a)
%  2^(1/2)/2
abs(ket_hi1)

% |ket_m,x>
ket_hi2=subs(ket_hi,[teta delta],[pi/2 pi])
%  2^(1/2)/2          = 1/sqrt(2)*[1;-1]             (1.1.12b)
% -2^(1/2)/2
abs(ket_hi2)

ket_hi3=subs(ket_hi,[teta delta],[pi/2 pi/2])
%      2^(1/2)/2      = 1/sqrt(2)*[1;1i]             (1.1.12c)
% (2^(1/2)*1i)/2
abs(ket_hi3)

ket_hi4=subs(ket_hi,[teta delta],[pi/2 3*pi/2])
%       2^(1/2)/2     = 1/sqrt(2)*[1;-1i]            (1.1.12d)
% -(2^(1/2)*1i)/2
abs(ket_hi4)
