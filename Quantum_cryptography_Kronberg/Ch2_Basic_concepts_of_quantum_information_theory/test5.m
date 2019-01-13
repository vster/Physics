clear
n=2
psi=sym('psi',[n n])
s=2
col_psi_s=psi(:,s)

row_psi_s=col_psi_s'

f=eye(n)
ksi=1
f_ksi=f(:,ksi)
% 1 when ksi=sig

% (row_psi_s|f_ksi)
row_psi_s*f_ksi % psi_s_sig

sum_psi_psi=zeros(n,n)
for s=1:n
col_psi_s=psi(:,s)    
sum_psi_psi=sum_psi_psi+col_psi_s*col_psi_s'
end
% [ psi1_1*conj(psi1_1) + psi1_2*conj(psi1_2), psi1_1*conj(psi2_1) + psi1_2*conj(psi2_2)]
%         =1                     =0                    =0             =0
% [ psi2_1*conj(psi1_1) + psi2_2*conj(psi1_2), psi2_1*conj(psi2_1) + psi2_2*conj(psi2_2)]
%         =0                    =0                   =0                 =1

% [1 0]    
% [0 1]
% sum_psi_psi=I
