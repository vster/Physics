% |2,1>
ket_alfa=[2;1]

% scaling 3 times axis | 1?
T1=[3 0;0 1]
ket_beta=T1*ket_alfa
%     6
%     1

% rotate 90?
T2=[0 1;-1 0]
ket_beta=T2*ket_alfa
%     1
%    -2

% reflection on one of the axes
T3=[1 0;0 -1]
ket_beta=T3*ket_alfa
%     2
%    -1