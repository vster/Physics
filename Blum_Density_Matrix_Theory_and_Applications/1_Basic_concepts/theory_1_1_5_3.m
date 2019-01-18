% The number of independent parameters

% Density Matrix is Hermitian, so
% <hi(i)|OpRo|hi(j)>=(<hi(j)|OpRo|hi(i)>)'            (1.1.29)
% And so diagonal elements are real and
% Re<+1/2|OpRo|-1/2>=Re<-1/2|OpRo|+1/2>
% Im(+1/2|OpRo|-1/2>=-Im<-1/2|OpRo|+1/2>

% Consider the mix described by the density operator
% OpRo1=1/2*|+1/2><+1/2|+1/2*|-1/2><-1/2|
% and mix
% OpRo2=1/6*|+1/2><+1/2|+1/6*|-1/2><-1/2|+
%     +1/3*|+1/2,x><+1/2,x|+1/3*|-1/2,x><-1/2,x|
% It can be shown that both beams are described 
% by the same density matrix

ket_p=[1;0]
ket_m=[0;1]
bra_p=ket_p'
bra_m=ket_m' 

OpRo1=1/2*ket_p*bra_p+1/2*ket_m*bra_m
%     0.5000         0   =1/2*[1,0;0,1]
%          0    0.5000
