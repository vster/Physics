% Phase shift
% Added plate lamda/4
clear
format short
syms c1 c2
ket_psi=[c1;c2]
W=[i 0;0 1]
bra_psi=ket_psi'

% ket_psi->|ket_hi>=W|ket_psi>              (21)
ket_hi=W*ket_psi
%  c1*1i
%     c2
bra_hi=ket_hi'

sig1=[0 1;1 0]
% <Yphv>=<hi|sig1|hi>=<psi|W'*sig1*W|psi>              (22)

Yphv=bra_hi*sig1*ket_hi
% c1*conj(c2)*1i - c2*conj(c1)*1i

sig2=W'*sig1*W
%    0.0000 + 0.0000i   0.0000 - 1.0000i    = 0 -i     (23)
%    0.0000 + 1.0000i   0.0000 + 0.0000i      i  0

[V,D]=eig(sig1)
% Eigvector
%    -0.7071    0.7071
%     0.7071    0.7071
% Eigvalues
%    -1     0
%     0     1

ket_psi1=1/sqrt(2)*[1;i]        % right curcle 
W*ket_psi1   
%   0.0000 + 0.7071i  
%   0.0000 + 0.7071i
%   =i/sqrt(2)*[1;1]    lin   get "+1"

ket_psi2=1/sqrt(2)*[1;-i]       % left curcle
W*ket_psi2
%   0.0000 + 0.7071i
%   0.0000 - 0.7071i
%   = i/sqrt(2)*[1;-1]  lin   get "-1"

simplify(bra_psi*sig2*ket_psi)
% c1*conj(c2)*1i - c2*conj(c1)*1i = i*(c2'*c1-c1'*c2) = 2*Im(c1'*c2)
% sig2 is named 2-nd Stocks parameter
