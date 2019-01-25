ket_U=sym('ket_U',[2 1])

OpT=[2 3;0 -i]

M=simplify(ket_U*ket_U'*OpT)
% [       2*abs(ket_U1)^2, 3*abs(ket_U1)^2 - ket_U1*conj(ket_U2)*1i]
% [ 2*ket_U2*conj(ket_U1), 3*ket_U2*conj(ket_U1) - abs(ket_U2)^2*1i]

% [2 3]
% [0 i]