clear
format short
digits(2)

size=15
DataA=randi([0 1],1,size)
BasisA=randi([0 1],1,size)
Psi=PMA(DataA,BasisA)


function PsiA=PMA(DataA,BasisA)
size=length(DataA);
ket_H=[1;0];
ket_V=[0;1];
ket_R=[2^(1/2)/2;2^(1/2)/2];
ket_L=[-2^(1/2)/2;2^(1/2)/2];

PsiA=zeros(2,size);
for j=1:size
    if BasisA(j)==0
        if DataA(j)==0
            PsiA(:,j)=ket_H;
        else
            PsiA(:,j)=ket_V;
        end
    else
        if DataA(j)==0
            PsiA(:,j)=ket_R;
        else
            PsiA(:,j)=ket_L;
        end
    end
end
% PsiA
end