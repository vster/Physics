% BB84
clear
format short
digits(2)

% Sender A
size=100;
DataA=randi([0 1],1,size);
disp(DataA(1:10))
BasisA=randi([0 1],1,size);
disp(BasisA(1:10))
PsiQC=vpa(Snd(DataA,BasisA));
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
BasisB=randi([0 1],1,size);
% BasisB=zeros(1,size);
% BasisB=ones(1,size);
disp(BasisB(1:10))
[DataB,ErrBinB]=Rcv(PsiQC,BasisB);
disp(DataB(1:10))

EqBas=0;
err=0;
for n=1:size
    if BasisA(n)==BasisB(n)
        EqBas=EqBas+1;
        if DataA(n)~=DataB(n) || ErrBinB(n)==1
            err=err+1;
        end
    end
end
ber_eq=err/EqBas
ber_size=err/size

function Psi=Snd(Data,Basis)
size=length(Data);
% |0+>
ket0P=[1;0];
% 1
% 0

% |1+>
ket1P=[0;1];
% 0
% 1

% |0X>
ket0D=1/sqrt(2)*(ket0P+ket1P);
%    0.7071 
%    0.7071

% |1X>
ket1D=1/sqrt(2)*(ket0P-ket1P);
%    0.7071
%   -0.7071

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
        [Pr1,Pr2]=PrP(Psi(:,n));
    else
        [Pr1,Pr2]=PrD(Psi(:,n));
    end    
    if Pr2>0.4 && Pr2<0.6
        Data(n)= randi([0 1],1,1);    
    else
        Data(n)=round(Pr2);
    end
end
% Data
end

function [Psi,DataE]=Intruder(Psi,BasisE)
size=length(Psi(1,:));
BasisE=randi([0 1],1,size);
% BasisE=zeros(1,size);
% BasisE=ones(1,size);
[DataE,ErrBinE]=Rcv(Psi,BasisE);
disp(DataE(1:15));
Psi=Snd(DataE,BasisE);
end

function [Pr0P,Pr1P]=PrP(psi)
% OpM0+
Op0P=[1 0;0 0];
%     1     0
%     0     0

% OpM1+
Op1P=[0 0;0 1];
%     0     0
%     0     1

Pr0P=psi'*Op0P*psi;
Pr1P=psi'*Op1P*psi;
end

function [Pr0D,Pr1D]=PrD(psi)
% OpM0X
Op0D=[0.5 0.5;0.5 0.5];
%    0.5000    0.5000
%    0.5000    0.5000

% OpM1X
Op1D=[0.5 -0.5;-0.5 0.5];
%    0.5000   -0.5000
%   -0.5000    0.5000

Pr0D=psi'*Op0D*psi;
Pr1D=psi'*Op1D*psi;
end

function rb=randbin(p,size)
    rb=floor(rand([1,size])+p);
end