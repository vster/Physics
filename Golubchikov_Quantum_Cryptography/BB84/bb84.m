% BB84
clear
format short
digits(2)
global ket0 ket1
ket0=[1;0];
ket1=[0;1];

% Sender A
size=500;
DataA=randi([0 1],1,size);
disp('Alice Data')
disp(DataA(1:10))

BasisA=randi([0 1],1,size);
disp('Alice Basis')
disp(BasisA(1:10))

PsiQC=Snd(DataA,BasisA);
disp('Photons in Channel')
disp(vpa(PsiQC(:,1:10)))

% Intruder E
intr_exist=0;
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

% Channel with Photons Loss
cpl_exist=1;
if cpl_exist>0
clp=0.3;       % probability of loss photons bits
chploss=randbin(clp,size);
psi00=[0;0];
for n=1:size
    if chploss(n)==1
        PsiQC(:,n)=psi00;
    end
end
disp('Photons in Channel with Loss')
disp(vpa(PsiQC(:,1:10)))
end

% Reciever B
BasisB=randi([0 1],1,size);
% BasisB=zeros(1,size);
% BasisB=ones(1,size);
disp('Bob Basis')
disp(BasisB(1:10))
[DataB,ErrBinB]=Rcv(PsiQC,BasisB);
disp('Bob Data')
disp(DataB(1:10))
if cpl_exist>0
    disp('Error Bits in Channel')
    disp(ErrBinB(1:10))
end

EqBas=0;
err=0;
EqBasVect=zeros(1,size);
for n=1:size
    if BasisA(n)==BasisB(n)
        EqBasVect(n)=1;
        EqBas=EqBas+1;
        if DataA(n)~=DataB(n) || ErrBinB(n)==1
            err=err+1;
        end
    end
end
disp('Matching of Alice and Bob Bases')
disp(EqBasVect(1:10))
ber_eq=err/EqBas
ber_size=err/size

function Psi=Snd(Data,Basis)
size=length(Data);
global ket0 ket1
ket0P=ket0;
ket1P=ket1;
ket0D=1/sqrt(2)*(ket0+ket1);
ket1D=1/sqrt(2)*(ket0-ket1);

Psi=zeros(2,size);
for n=1:size
    if Basis(n)==0
        if Data(n)==0
            Psi(:,n)=ket0P;
        else
            Psi(:,n)=ket1P;
        end
    else
        if Data(n)==0
            Psi(:,n)=ket0D;
        else
            Psi(:,n)=ket1D;
        end
    end
end
% Psi
end

function [Data,ErrBin]=Rcv(Psi,Basis)
size=length(Psi(1,:));
Data=zeros(1,size);
ErrBin=zeros(1,size);
for n=1:size
    ket_psi=Psi(:,n);
    A=ket_psi'*ket_psi;
    if A==0
        ErrBin(n)=1;
        continue;
    end
    if Basis(n)==0
        Pr=PrP(Psi(:,n));
    else
        Pr=PrD(Psi(:,n));
    end    
    if round(Pr,2)==0.5
        Data(n)= randi([0 1],1,1);    
    else
        Data(n)=round(Pr);
    end
end
end

function [Psi,DataE]=Intruder(Psi,BasisE)
size=length(Psi(1,:));
BasisE=randi([0 1],1,size);
% BasisE=zeros(1,size);
% BasisE=ones(1,size);
disp('Eve Basis')
disp(BasisE(1:10));
[DataE,ErrBinE]=Rcv(Psi,BasisE);
disp('Eve Data')
disp(DataE(1:10));
Psi=Snd(DataE,BasisE);
end

function Pr1P=PrP(psi)
Op0P=[1 0;0 0];
Op1P=[0 0;0 1];
ro=psi*psi';
Pr1P=trace(ro*Op1P);
end

function Pr1D=PrD(psi)
Op0D=[0.5 0.5;0.5 0.5];
Op1D=[0.5 -0.5;-0.5 0.5];
ro=psi*psi';
Pr1D=trace(ro*Op1D);
end

function rb=randbin(p,size)
    rb=floor(rand([1,size])+p);
end