% BB84
clear
% format short
% digits(2)

% Sender A
size=500
DataA=randi([0 1],1,size);
BasisA=randi([0 1],1,size);
PsiQC=vpa(SndA(DataA,BasisA));

% Reciever B
BasisB=randi([0 1],1,size);
DataB=vpa(RcvB(PsiQC,BasisB));

EqBas=0;
good=0;
err=0;
for j=1:size
    if BasisA(j)==BasisB(j)
        EqBas=EqBas+1;
        if DataA(j)==DataB(j)
            good=good+1;
        else
            err=err+1;
        end
    end
end
ber=err/EqBas

function PsiA=SndA(DataA,BasisA)
size=length(BasisA);
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

function DataB=RcvB(Psi,BasisB)
size=length(BasisB);
DataB=zeros(1,size);
for j=1:size
    if BasisB(j)==0
        [Pr1,Pr2]=PrHV(Psi(:,j));
    else
        [Pr1,Pr2]=PrRL(Psi(:,j));
    end
DataB(j)=Pr2;    
end
% DataB
end

function [PrH,PrV]=PrHV(psi)
OpH=[1 0;0 0];
OpV=[0 0;0 1];
PrH=psi'*OpH*psi;
PrV=psi'*OpV*psi;
end

function [PrR,PrL]=PrRL(psi)
OpR=[0.5 0.5;0.5 0.5];
OpL=[0.5 -0.5;-0.5 0.5];
PrR=psi'*OpR*psi;
PrL=psi'*OpL*psi;
end