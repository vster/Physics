% BB84 
% 6 states
clear
format short
digits(2)

% Sender A
size=1000;
DataA=randi([0 1],1,size);
disp('Alice Data')
disp(DataA(1:10))
BasisA=randi([0 2],1,size);
disp('Alice Basis')
disp(BasisA(1:10))
PsiQC=Snd(DataA,BasisA);
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

% DarkNoise
dn_exist=0;
if dn_exist>0
dnp=0.1;       % probability of dark noise bits
darknoise=randbin(dnp,size);
psi00=[0;0];
for n=1:size
    if darknoise(n)==1
        PsiQC(:,n)=psi00;
    end
end
end

% Reciever B
BasisB=randi([0 2],1,size);
disp('Bob Basis')
disp(BasisB(1:10))
[DataB,ErrBinB]=Rcv(PsiQC,BasisB);
disp('Bob Data')
disp(DataB(1:10))

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
ket0P=[1;0];
ket1P=[0;1];
ket0D=1/sqrt(2)*(ket0P+ket1P);
ket1D=1/sqrt(2)*(ket0P-ket1P);
ket0C=1/sqrt(2)*(ket0P+1i*ket1P);
ket1C=1/sqrt(2)*(ket0P-1i*ket1P);

Psi=zeros(2,size);
for n=1:size
    if Basis(n)==0
        if Data(n)==0
            Psi(:,n)=ket0P;
        else
            Psi(:,n)=ket1P;
        end
    elseif Basis(n)==1
        if Data(n)==0
            Psi(:,n)=ket0D;
        else
            Psi(:,n)=ket1D;
        end
    else 
        if Data(n)==0
            Psi(:,n)=ket0C;
        else
            Psi(:,n)=ket1C;
        end       
    end
end
end

function [Data,ErrBin]=Rcv(Psi,Basis)
size=length(Psi(1,:));
Data=zeros(1,size);
ErrBin=zeros(1,size);
PrVect=zeros(1,size);
for n=1:size
    ket_psi=Psi(:,n);
    A=ket_psi'*ket_psi;
    if A==0
        ErrBin(n)=1;
        continue;
    end
    if Basis(n)==0
        PrVect(n)=PrP(Psi(:,n));
    elseif Basis(n)==1
        PrVect(n)=PrD(Psi(:,n));
    else
        PrVect(n)=PrC(Psi(:,n));
    end    
    if round(PrVect(n),2)==0.5
        Data(n)= randi([0 1],1,1);    
    else
        Data(n)=round(PrVect(n));
    end
end
% Data
end

function [Psi,DataE]=Intruder(Psi,BasisE)
size=length(Psi(1,:));
BasisE=randi([0 2],1,size);
% BasisE=zeros(1,size);
% BasisE=ones(1,size);
[DataE,ErrBinE]=Rcv(Psi,BasisE);
disp(DataE(1:10));
Psi=Snd(DataE,BasisE);
end

function Pr1P=PrP(psi)
Op0P=[1 0;0 0];
Op1P=[0 0;0 1];
ro=psi*psi';
% Pr0P=trace(ro*Op0P);
Pr1P=trace(ro*Op1P);
end

function Pr1D=PrD(psi)
Op0D=[0.5 0.5;0.5 0.5];
Op1D=[0.5 -0.5;-0.5 0.5];
ro=psi*psi';
% Pr0D=trace(ro*Op0D);
Pr1D=trace(ro*Op1D);
end

function Pr1C=PrC(psi)
Op0C=[0.5 -0.5i;0.5i 0.5];
Op1C=[0.5 0.5i;-0.5i 0.5];
ro=psi*psi';
% Pr0C=trace(ro*Op0C);
Pr1C=trace(ro*Op1C);
end

function rb=randbin(p,size)
    rb=floor(rand([1,size])+p);
end