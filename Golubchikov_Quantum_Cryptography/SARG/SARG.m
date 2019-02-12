% SARG
clear
format short
digits(2)

eta=2*pi/3
ket0=[1;0];
ket1=[0;1];
global ket0a ket1a ket0b ket1b
ket0a=cos(eta/2)*ket0+sin(eta/2)*ket1;
ket1a=cos(eta/2)*ket0-sin(eta/2)*ket1;
ket0b=sin(eta/2)*ket0-cos(eta/2)*ket1;
ket1b=sin(eta/2)*ket0+cos(eta/2)*ket1;

% Sender A
size=1000;
DataA=randi([0 1],1,size);
disp('Alice Data')
disp(DataA(1:10))

BasisA=randi([0 1],1,size);
disp('Alice Basis')
disp(BasisA(1:10))

PsiQC=Snd(DataA,BasisA);
disp('Photons in Channel')
disp(PsiQC(:,1:10))

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
cpl_exist=0;
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
[DataB,PrVectB]=Rcv(PsiQC,BasisB);
disp('Bob Data')
disp(DataB(1:10))
disp('Bob Pr Vect')
disp(PrVectB(1:10))

EqBas=0;
good=0;
err=0;
EqBasVect=zeros(1,size);
ValidDataVect=zeros(1,size);
for n=1:size
    if round(PrVectB(n),2)==1
        ValidDataVect(n)=1;
    end
    if BasisA(n)==BasisB(n) && ValidDataVect(n)==1
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
disp('Valid Data')
disp(ValidDataVect(1:10))
ber_eq=err/EqBas
ber_size=err/size
good_size=good/size

function Psi=Snd(Data,Basis)
size=length(Data);
global ket0a ket1a ket0b ket1b
Psi=zeros(2,size);
for n=1:size
    if Basis(n)==0
        if Data(n)==0
            Psi(:,n)=ket0a;
        else
            Psi(:,n)=ket1a;
        end
    else
        if Data(n)==0
            Psi(:,n)=ket0b;
        else
            Psi(:,n)=ket1b;
        end
    end
end
end

function [Data,PrVect]=Rcv(Psi,Basis)
size=length(Psi(1,:));
PrVect=zeros(1,size);
Data=randi([0 1],1,size);
for n=1:size
    ket_psi=Psi(:,n);
    ro=ket_psi*ket_psi';
    if Basis(n)==0
        if Data(n)==0
            PrVect(n)=Pr0A(Psi(:,n));
        else
            PrVect(n)=Pr1A(Psi(:,n));
        end
    else
        if Data(n)==0
            PrVect(n)=Pr0B(Psi(:,n));
        else
            PrVect(n)=Pr1B(Psi(:,n));
        end
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

function Pr=Pr0A(psi)
global ket0a
Op0a=ket0a*ket0a';
ro=psi*psi';
Pr=trace(ro*Op0a);
end

function Pr=Pr1A(psi)
global ket1a
Op1a=ket1a*ket1a';
ro=psi*psi';
Pr=trace(ro*Op1a);
end

function Pr=Pr0B(psi)
global ket0b
Op0b=ket0b*ket0b';
ro=psi*psi';
Pr=trace(ro*Op0b);
end

function Pr=Pr1B(psi)
global ket1b
Op1b=ket1b*ket1b';
ro=psi*psi';
Pr=trace(ro*Op1b);
end

function rb=randbin(p,size)
    rb=floor(rand([1,size])+p);
end