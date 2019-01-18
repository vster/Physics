% Mixed spin states

% |a1|^2 - W1=N1/N
% |a2|^2 - W2=N2/N
% N=N1+N2
clear
format short
ket_p=[1;0]
ket_m=[0;1]
bra_p=ket_p'
bra_m=ket_m' 

% Pi=W1*<1/2|sigi|1/2>+W2*<-1/2|sigi|-1/2>
% i=x,y,z
% <sigi>=<hi|sigi|hi>                   

% Pauli Matrix
sigx=[0 1;1 0]
sigy=[0 -i;i 0]
sigz=[1 0;0 -1]                       

syms W1 W2
Px=W1*bra_p*sigx*ket_p+W2*bra_m*sigx*ket_m
% 0
Py=W1*bra_p*sigy*ket_p+W2*bra_m*sigy*ket_m
% 0
Pz=W1*bra_p*sigz*ket_p+W2*bra_m*sigz*ket_m
% W1 - W2 = (N1-N2)/N                                  (1.1.13)

% In general case
% Pi=Wa*<hia|sigi|hia>+Wb*<hib|sigi|hib>               (1.1.14)
%          = Wa*Pi(a)+Wb*Pi(b)                         (1.1.14a)
% P=Wa*P(a)+Wb*P(b)                                    (1.1.14b)
% As |P(a)|=1,|P(b)|=1, then
% P^2=(Wa*P(a)+Wb*P(b))^2=
%   Wa^2*P(a)^2+Wb^2*P(b)^2+2*Wa*Wb*P(a)*P(b) <=
%   Wa^2+Wb^2+2*Wa*Wb=(Wa+Wb)^2=1                      (1.1.15)
