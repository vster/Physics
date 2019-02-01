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
intr_exist=1;
while intr_exist>0 
[PsiQC,DataE]=Intruder(PsiQC);
GuessE=0;
for n=1:size
    if DataA(n)==DataE(n)
        GuessE=GuessE+1;
    end
end
GuessE_size=GuessE/size
intr_exist=0;
end

% DarkNoise
dn_exist=0;
if dn_exist>0
dnp=0.2       % probability of dark noise bits
darknoise=randbin(dnp,size);
psi00=[0;0];
for n=1:size
    if darknoise(n)==1
        PsiQC(:,n)=psi00;
    end
end
dn_exist=0;
end

% Reciever B
BasisB=randi([0 1],1,size);
DataB=Rcv(PsiQC,BasisB);
disp(DataB(1:15))

EqBas=0;
good=0;
err=0;
for n=1:size
    if BasisA(n)==BasisB(n)
        EqBas=EqBas+1;
        if DataA(n)==DataB(n)
            good=good+1;
        else
            err=err+1;
        end
    end
end
ber_eq=err/EqBas
ber_size=err/size

function Psi=Snd(Data,Basis)
size=length(Data);
ket0P=[1;0];
ket1P=[0;1];
ket0D=1/sqrt(2)*(ket0P+ket1P);
ket1D=1/sqrt(2)*(ket0P-ket1P);

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

function Data=Rcv(Psi,Basis)
size=length(Psi(1,:));
Data=zeros(1,size);
for n=1:size
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

function rb=randbin(p,size)
    rb=floor(randi([0 ceil(1/p)],[1,size])*p);
end