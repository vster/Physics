% |3,5>
ket_alfa=[3;5]

% scaling 3 times axis | 1?
T1=[3 0;0 1]
ket_beta=T1*ket_alfa
%     9
%     5

% rotate 90?
T2=[0 1;-1 0]
ket_beta=T2*ket_alfa
%     5
%    -3

% reflection on one of the axes
T3=[1 0;0 -1]
ket_beta=T3*ket_alfa
%     3
%    -5