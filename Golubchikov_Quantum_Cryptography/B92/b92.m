% B92
clear
format short
digits(2)

% Sender A
size=200;
DataA=randi([0 1],1,size);
disp(DataA(1:10))
PsiQC=vpa(Snd(DataA));

% Intruder E
% [PsiQC,DataE]=Intruder(PsiQC);

% Reciever B
BasisB=randi([0 1],1,size);
disp(BasisB(1:10))
DataB=Rcv(PsiQC,BasisB);
disp(DataB(1:10))

EqBas=0;
good=0;
err=0;
for j=1:size
    if DataA(j)==BasisB(j)
      EqBas=EqBas+1;
        if DataA(j)==DataB(j)
             good=good+1;
        else
             err=err+1;
        end    
    end
end
ber=err/EqBas

function Psi=Snd(Data)
size=length(Data);
ket0P=[0;1];
ket1D=[1/sqrt(2);1/sqrt(2)];

Psi=zeros(2,size);
for j=1:size
    if Data(j)==0
        Psi(:,j)=ket0P;
    else
        Psi(:,j)=ket1D;
    end
end
% Psi
end

function Data=Rcv(Psi,Basis)
size=length(Psi(1,:));
Data=zeros(1,size);
OpVP=[0 0;0 1];
Op1D=[0.5 -0.5;-0.5 0.5];
for j=1:size
    psi=Psi(:,j);
    ro=psi*psi';
    if Basis(j)==0;
        Pr(j)=trace(ro*OpVP);
    else
        Pr(j)=trace(ro*Op1D);
    end   
    Data(j)=1-Pr(j);
    %if Pr(j)==0.5
    %    Data(j)=randi([0 1],1,1);
    %end
end
end

function [Psi,DataE]=Intruder(Psi,BasisE)
size=length(Psi(1,:));
BasisE=randi([0 1],1,size);
DataE=Rcv(Psi,BasisE);
disp(DataE(1:10));
for j=1:size
    if DataE(j)==0.5
        DataE(j)=randi([0 1],1,1);
    end
end
Psi=Snd(DataE);
end

