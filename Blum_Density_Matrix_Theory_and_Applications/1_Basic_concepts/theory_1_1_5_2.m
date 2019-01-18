% The physical meaning of the density matrix

% Diagonal density matrix elements
% <hi(i)|OpRo|hi(i)>=Wa*|aa(i)|^2+Wb*|ab(i)|^2 (i=1,2)      (1.1.27)

% <hi|OpRo|hi>=Wa*<hi|hia><hia|hi>+Wb*<hi|hib><hib|hi>=
%      =Wa*|aa|^2+Wb*|ab|^2                                 (1.1.28)
% here aa=<hia|hi>, ab-<hib|hi>

% |+1/2,y>=1/sqrt(2)*[1;-1i]
clear
syms W1 W2
ket_hi=1/sqrt(2)*[1;-1i]
bra_hi=ket_hi'
OpRo=[W1,0;0,W2]

% <+1/2,y*|ro|+1/2,y>=
bra_hi*OpRo*ket_hi
% W1/2 + W2/2