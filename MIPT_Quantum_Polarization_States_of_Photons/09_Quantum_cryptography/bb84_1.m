% BB84
clear
format short
digits(2)

% Sender A
size=500;
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
ket_H=[1;0];
ket_V=[0;1];
ket_RD=[2^(1/2)/2;2^(1/2)/2];
ket_LD=[-2^(1/2)/2;2^(1/2)/2];

Psi=zeros(2,size);
for j=1:size
    if Basis(j)==0
        if Data(j)==0
            Psi(:,j)=ket_H;
        else
            Psi(:,j)=ket_V;
        end
    else
        if Data(j)==0
            Psi(:,j)=ket_RD;
        else
            Psi(:,j)=ket_LD;
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
        [Pr1,Pr2]=PrHV(Psi(:,j));
    else
        [Pr1,Pr2]=PrRL(Psi(:,j));
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

function [PrH,PrV]=PrHV(psi)
OpH=[1 0;0 0];
OpV=[0 0;0 1];
ro=psi*psi';
PrH=trace(OpH*ro);
PrV=trace(OpV*ro);
end

function [PrRD,PrLD]=PrRL(psi)
OpRD=[0.5 0.5;0.5 0.5];
OpLD=[0.5 -0.5;-0.5 0.5];
ro=psi*psi';
PrRD=trace(OpRD*ro);
PrLD=trace(OpLD*ro);
end