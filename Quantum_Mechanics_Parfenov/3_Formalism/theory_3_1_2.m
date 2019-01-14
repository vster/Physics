% Dirac designations.
clear
n=3
ket_beta=sym('b',[n,1])
bra_beta=ket_beta'
ket_alfa=sym('a',[n,1])
bra_alfa=ket_alfa'

% <alfa|beta>
bra_alfa*ket_beta                    % (3.2)
% b1*conj(a1) + b2*conj(a2) + b3*conj(a3)

% |alfa><beta|
ket_alfa*bra_beta
%[ a1*conj(b1), a1*conj(b2), a1*conj(b3)]
%[ a2*conj(b1), a2*conj(b2), a2*conj(b3)]
%[ a3*conj(b1), a3*conj(b2), a3*conj(b3)]

I=eye(n)
snn=zeros(n,n)
for i=1:n
    ket_n_i=I(:,i)
    bra_n_i=ket_n_i'
    snn=snn+ket_n_i*bra_n_i
end
% sum(n)|n><n|+I                                      (3.3)

% <Psi|...=int()Psi'[...]d_ksi
% <Psi|Phi>=int()Psi'*Phi*d_ksi                       (3.4)

% <Phi|Psi>=<Psi|Phi>'                                (3.5)

% <Psi|Psi>=int()|Psi|^2*d_ksi

% <n|n>=int()Psi'*Psi*d_ksi=1

% Two functions or two states are orthogonal 
% if their scalar product <Psi|Phi>=0.
% A set of functions or states ({?n} or {| n?})
% called orthonormal if they are normalized and mutually
% orthogonal:
% <Psi(m)|Psi(n)>=kroneckerDelta(m,n)

for i=1:n
ket_Psi_n=I(:,i)
end

c=sym('c',[1,n])

Psi=zeros(3,1)
for i=1:n
    ket_Psi_n=I(:,i)
    Psi=Psi+c(i)*ket_Psi_n
end
% Psi=sum(n=1:inf)c(n)*|Psi(n)>=sum(n=1:inf)<Psi(n)|Psi>|Psi(n)>

% <Q>=int()Psi'*OpQ*Psi*d_ksi=<Psi|OpQ Psi> or <Psi|OpQ|Psi>

% Since the measurement gives a real value and due 
% to the hermiticity of the operator
% <Q>=<Q>'
% But
% <Psi|OpQ Psi>=<OpQ Psi|Psi>
% It can be shown similarly and justice more strictly conditions
% <Psi|OpQ Phi>=<OpQ Psi|Psi>                      (3.6)
% for all Psi and all Phi