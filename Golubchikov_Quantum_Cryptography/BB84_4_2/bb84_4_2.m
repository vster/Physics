% BB84
clear
format long
digits(2)
global eta ket0 ket1
eta=2*pi/3
ket0=[1;0];
ket1=[0;1];

% Sender A
size=200;
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

% DarkNoise
dn_exist=0;
if dn_exist>0
dnp=0.3;       % probability of dark noise bits
darknoise=randbin(dnp,size);
psi00=[0;0];
for n=1:size
    if darknoise(n)==1
        PsiQC(:,n)=psi00;
    end
end
disp('Photons in Channel with Dark Noise')
disp(PsiQC(:,1:10))
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
if dn_exist>0
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
global eta ket0 ket1
size=length(Data);
ket0x=cos(eta/2)*ket0+sin(eta/2)*ket1
ket1x=cos(eta/2)*ket0-sin(eta/2)*ket1
ket0y=cos(eta/2)*ket0+1i*sin(eta/2)*ket1
ket1y=cos(eta/2)*ket0-1i*sin(eta/2)*ket1

Psi=zeros(2,size);
for n=1:size
    if Basis(n)==0
        if Data(n)==0
            Psi(:,n)=ket0x;
        else
            Psi(:,n)=ket1x;
        end
    else
        if Data(n)==0
            Psi(:,n)=ket0y;
        else
            Psi(:,n)=ket1y;
        end
    end
end
end

function [Data,ErrBin]=Rcv(Psi,Basis)
size=length(Psi(1,:));
Data=zeros(1,size);
ErrBin=zeros(1,size);
ValidBin=zeros(1,size);

MeasureBin=randi([0 1],1,size);
for n=1:size
    ket_psi=Psi(:,n);
    A=ket_psi'*ket_psi;
    if A==0
        ErrBin(n)=1;
        continue;
    end
    ro=ket_psi*ket_psi'
    if Basis(n)==0
        if MeasureBin(n)==0
            Pr=Pr0X(Psi(:,n)) 
        else
            Pr=Pr1X(Psi(:,n))
        end
    else
        if MeasureBin(n)==0
            Pr=Pr0Y(Psi(:,n)) 
        else
            Pr=Pr1Y(Psi(:,n))
        end
    end
    if Pr==1
        Data(n)=MeasureBin(n);
        ValidBin(n)=1;
    end
end
% Data
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

function Pr=Pr0X(psi)
global eta ket0 ket1
ket0x=cos(eta/2)*ket0+sin(eta/2)*ket1;
Op0x=ket0x*ket0x'
ro=psi*psi';
Pr=trace(psi*psi'*Op0x);
end

function Pr=Pr1X(psi)
global eta ket0 ket1
ket1x=cos(eta/2)*ket0-sin(eta/2)*ket1;
Op1x=ket1x*ket1x';
ro=psi*psi';
Pr=trace(psi*psi'*Op1x);
end

function Pr=Pr0Y(psi)
global eta ket0 ket1
ket0y=cos(eta/2)*ket0+1i*sin(eta/2)*ket1;
Op0y=ket0y*ket0y';
ro=psi*psi';
Pr=trace(psi*psi'*Op0y);
end

function Pr=Pr1Y(psi)
global eta ket0 ket1
ket1y=cos(eta/2)*ket0-1i*sin(eta/2)*ket1;
Op1y=ket1y*ket1y';
ro=psi*psi';
Pr=trace(psi*psi'*Op1y);
end

function rb=randbin(p,size)
    rb=floor(rand([1,size])+p);
end