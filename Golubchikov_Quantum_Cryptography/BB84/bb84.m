% BB84
clear
format short
digits(2)

% Sender A
size=100;
DataA=randi([0 1],1,size);
disp(DataA(1:15))
BasisA=randi([0 1],1,size);
PsiQC=vpa(Snd(DataA,BasisA));

% Intruder E
[PsiQC,DataE]=Intruder(PsiQC);

% Reciever B
BasisB=randi([0 1],1,size);
DataB=Rcv(PsiQC,BasisB);
disp(DataB(1:15))

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

function Psi=Snd(Data,Basis)
size=length(Data);
ket0P=[1;0];
ket1P=[0;1];
ket0D=1/sqrt(2)*(ket0P+ket1P);
ket1D=1/sqrt(2)*(ket0P-ket1P);

Psi=zeros(2,size);
for j=1:size
    if Basis(j)==0
        if Data(j)==0
            Psi(:,j)=ket0P;
        else
            Psi(:,j)=ket1P;
        end
    else
        if Data(j)==0
            Psi(:,j)=ket0D;
        else
            Psi(:,j)=ket1D;
        end
    end
end
% Psi
end

function Data=Rcv(Psi,Basis)
size=length(Psi(1,:));
Data=zeros(1,size);
for j=1:size
    if Basis(j)==0
        [Pr1,Pr2]=PrP(Psi(:,j));
    else
        [Pr1,Pr2]=PrD(Psi(:,j));
    end
    if 0.4<=Pr2&&Pr2<=0.6
        Data(j)= randi([0 1],1,1);
    else
        Data(j)=round(Pr2);
    end
end
% Data
end

function [Psi,DataE]=Intruder(Psi,BasisE)
size=length(Psi(1,:));
BasisE=randi([0 1],1,size);
DataE=Rcv(Psi,BasisE);
disp(DataE(1:15));
Psi=Snd(DataE,BasisE);
end

function [Pr0P,Pr1P]=PrP(psi)
Op0P=[1 0;0 0];
Op1P=[0 0;0 1];
Pr0P=psi'*Op0P*psi;
Pr1P=psi'*Op1P*psi;
end

function [Pr0D,Pr1D]=PrD(psi)
Op0D=[0.5 0.5;0.5 0.5];
Op1D=[0.5 -0.5;-0.5 0.5];
Pr0D=psi'*Op0D*psi;
Pr1D=psi'*Op1D*psi;
end