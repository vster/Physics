clear
n=3
e=eye(n)
s=2
col_e_s=e(:,s)

psi=sym('psi',[n n])
col_psi_s=psi(:,s)

T=zeros(n,n)
for s=1:n
    col_e_s=e(:,s)
    col_psi_s=psi(:,s)
    T=T+col_psi_s*col_e_s'
end
% T=
%[ psi1_1, psi1_2, psi1_3]
%[ psi2_1, psi2_2, psi2_3]
%[ psi3_1, psi3_2, psi3_3]
% =psi