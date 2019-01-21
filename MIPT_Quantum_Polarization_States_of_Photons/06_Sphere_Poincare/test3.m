clear
format short
ket_H=[1;0]
ket_V=[0;1]
ket_R=[2^(1/2)/2;2^(1/2)/2]
ket_L=[-(2^(1/2)*1i)/2;(2^(1/2)*1i)/2]

size=10
StateA=randi([0 1],2,size)
PsiA=zeros(2,size);

for j=1:size
    if StateA(2,j)==0
        if StateA(1,j)==0
            PsiA(:,j)=ket_H;
        else
            PsiA(:,j)=ket_V;
        end
    else
        if StateA(1,j)==0
            PsiA(:,j)=ket_R;
        else
            PsiA(:,j)=ket_L;
        end
    end
end
PsiA