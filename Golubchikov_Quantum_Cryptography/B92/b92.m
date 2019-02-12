% B92
clear
format short
digits(2)

% Sender A
size=10000;
DataA=randi([0 1],1,size);
disp('Alice Data')
disp(DataA(1:10))
PsiQC=Snd(DataA);
disp('Photons in Channel')
disp(vpa(PsiQC(:,1:10)))

% Intruder E
intr_exist=1;
if intr_exist>0 
[PsiQC,DataE]=Intruder(PsiQC);
GuessE=0;
for n=1:size
    if DataA(n)==DataE(n)
        GuessE=GuessE+1;
    end
end
GuessE_size=GuessE/size
end

% Reciever B
BasisB=randi([0 1],1,size);
disp('Bob Basis')
disp(BasisB(1:10))
DataB=Rcv(PsiQC,BasisB);
disp('Bob Data')
disp(DataB(1:10))

EqBas=0;
good=0;
err=0;
EqBasVect=zeros(1,size);
for n=1:size
    if DataA(n)==BasisB(n)
      EqBasVect(n)=1;        
      EqBas=EqBas+1;
        if DataA(n)==DataB(n)
             good=good+1;
        else
             err=err+1;
        end    
    end
end
disp('Matching of Alice and Bob Bases')
disp(EqBasVect(1:10))
ber=err/EqBas

function Psi=Snd(Data)
size=length(Data);
ket0P=[0;1];
ket1D=[1/sqrt(2);1/sqrt(2)];

Psi=zeros(2,size);
for n=1:size
    if Data(n)==0
        Psi(:,n)=ket0P;
    else
        Psi(:,n)=ket1D;
    end
end
% Psi
end

function Data=Rcv(Psi,Basis)
size=length(Psi(1,:));
Data=zeros(1,size);
OpVP=[0 0;0 1];
Op1D=[0.5 -0.5;-0.5 0.5];
for n=1:size
    psi=Psi(:,n);
    ro=psi*psi';
    if Basis(n)==0;
        Pr(n)=trace(ro*OpVP);
    else
        Pr(n)=trace(ro*Op1D);
    end   
    Data(n)=round(1-Pr(n),1);
    if round(Pr(n),1)==0.5
        Data(n)=randi([0 1],1,1);
    end
end
end

function [Psi,DataE]=Intruder(Psi,BasisE)
size=length(Psi(1,:));
BasisE=randi([0 1],1,size);
DataE=Rcv(Psi,BasisE);
disp('Eve Data')
disp(DataE(1:10));
for n=1:size
    if round(DataE(n),2)==0.5
        DataE(n)=randi([0 1],1,1);
    end
end
Psi=Snd(DataE);
end

