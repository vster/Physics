% Spin density matrix and its basic properties

% Basic definitions
clear
% We have two particle beams
% Na particles in state |hia>
% Nb particles in state |hib> 

% Operator OpRo used for description of the combined beam
% OpRo=Wa*|hia>*<hia|+Wb*|hib>*<hib|                 (1.1.18)
syms Wa Wb
% where Wa=Na/N, Wb=Nb/N,N=Na+Nb
% Operator OpRo is called  the density operator or statistical operator

% In the particular case of pure state
% OpRo=|hi><hi|                                      (1.1.18a)

ket_p=[1;0]
ket_m=[0;1]
bra_p=ket_p'
bra_m=ket_m' 

syms aa1 aa2 ab1 ab2
ket_hia=aa1*ket_p+aa2*ket_m                          % (1.1.19)
%  aa1
%  aa2
ket_hib=ab1*ket_p+ab2*ket_m
%  ab1                                                (1.1.20a)
%  ab2
bra_hia=ket_hia'
% [ conj(aa1), conj(aa2)]                             (1.1.20b)   
bra_hib=ket_hib'
% [ conj(ab1), conj(ab2)]

% |hia><hia|
hia2=simplify(ket_hia*bra_hia)
% [    abs(aa1)^2, aa1*conj(aa2)]                     (1.1.21)
% [ aa2*conj(aa1),    abs(aa2)^2]

% |hib><hib|
hib2=simplify(ket_hib*bra_hib)
% [    abs(ab1)^2, ab1*conj(ab2)]
% [ ab2*conj(ab1),    abs(ab2)^2]

OpRo=Wa*hia2+Wb*hib2                                    % (1.1.22)
%[       Wa*abs(aa1)^2 + Wb*abs(ab1)^2, Wa*aa1*conj(aa2) + Wb*ab1*conj(ab2)]
%[ Wa*aa2*conj(aa1) + Wb*ab2*conj(ab1),       Wa*abs(aa2)^2 + Wb*abs(ab2)^2]

% Put |1/2>=|hi1>, |-1/2>=|hi2>
% Then general element of dencity matrix 
% standing at i row and j column is
% <hi(i)|OpRo|xi(j)>=Wa*aa(i)*aa(j)'+Wb*ab(i)ab(j)'          (1.1.23)
% where i,j=1,2

% <xi(i)|xi(j)>=kroneckerDelta(i,j)                          (1.1.24)

% The trace of the density matrix is given by
% tr(Opro)=Wa+Wb=1                                           (1.1.25)

% Mix from
% N1 particles in state |hi1>=|+1/2>
% N2 particles in state |hi2>=|-1/2>
% The full beam is described by the density operator.
% OpRo=W1*|+1/2><+1/2|+W2*|-1/2><-1/2|                       (1.1.26a)
% where Wi=Ni/N
% and density matrix in {|+-1/2>} representation is diagonal
% <hi(i)|OpRo|hi(j)>=W(i)*kroneckerDelta(i,j)

