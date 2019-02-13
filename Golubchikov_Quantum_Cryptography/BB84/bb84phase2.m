% BB84 Phase coding
clear
format short
digits(2)

% Sender A
size=1000;
DataA=randi([0 1],1,size);
disp('Alice Data')
disp(DataA(1:10))

BasisA=randi([0 1],1,size);
disp('Alice Basis')
disp(BasisA(1:10))

PhaseQC=Snd(DataA,BasisA);
disp('Photons in Channel')
disp(vpa(PhaseQC(1:10)))

% Intruder E
intr_exist=0;
if intr_exist>0 
[PhaseQC,DataE]=Intruder(PhaseQC);
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
% BasisB=zeros(1,size);
% BasisB=ones(1,size);
disp('Bob Basis')
disp(BasisB(1:10))
DataB=Rcv(PhaseQC,BasisB);
disp('Bob Data')
disp(DataB(1:10))

EqBas=0;
good=0;
err=0;
EqBasVect=zeros(1,size);
for n=1:size
    if BasisA(n)==BasisB(n)
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
ber_eq=err/EqBas
ber_size=err/size
good_size=good/size

function Phase=Snd(Data,Basis)
size=length(Data);
Phase=zeros(1,size);
for n=1:size
    if Basis(n)==0
        if Data(n)==0
            Phase(n)=0;
        else
            Phase(n)=pi;
        end
    else
        if Data(n)==0
            Phase(n)=pi/2;
        else
            Phase(n)=3*pi/2;
        end
    end
end
end

function Data=Rcv(phiA,Basis)
size=length(phiA(1,:));
Data=zeros(1,size);
phiB=Basis*pi/2;

for n=1:size
    Pr=cos((phiA(n)-phiB(n)+pi)/2)^2;
    if round(Pr,2)==0.5
        Data(n)= randi([0 1],1,1);    
    else
        Data(n)=round(Pr,2);
    end
end
end

function [Phase,DataE]=Intruder(Phase,BasisE)
size=length(Phase);
BasisE=randi([0 1],1,size);
% BasisE=zeros(1,size);
% BasisE=ones(1,size);
disp('Eve Basis')
disp(BasisE(1:10));
DataE=Rcv(Phase,BasisE);
disp('Eve Data')
disp(DataE(1:10));
Phase=Snd(DataE,BasisE);
end

function rb=randbin(p,size)
    rb=floor(rand([1,size])+p);
end