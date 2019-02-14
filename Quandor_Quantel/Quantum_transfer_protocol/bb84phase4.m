% BB84 Phase coding
% 2 bases
clear
format short
digits(2)
global showvec
showvec=20;

% Sender A
size=5000;
DataA=randi([0 1],1,size);
disp('Alice Data')
disp(DataA(1:showvec))

BasisA=randi([1 4],1,size);
disp('Alice Basis')
disp(BasisA(1:showvec))

PhaseQC=Snd(DataA,BasisA);
disp('Photons in Channel')
disp(vpa(PhaseQC(1:showvec)))

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
BasisB=randi([1 4],1,size);
% BasisB=zeros(1,size);
% BasisB=ones(1,size);
disp('Bob Basis')
disp(BasisB(1:showvec))
DataB=Rcv(PhaseQC,BasisB);
disp('Bob Data')
disp(vpa(DataB(1:showvec)))

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
disp(EqBasVect(1:showvec))
ber_eq=err/EqBas
ber_size=err/size
good_eq=good/EqBas
good_size=good/size

function Phase=Snd(Data,Basis)
size=length(Data);
Phase=zeros(1,size);
for n=1:size
    switch Basis(n)
        case 1
            if Data(n)==0
                Phase(n)=0;
            else
                Phase(n)=pi/2;
            end
        case 2
            if Data(n)==0
                Phase(n)=pi/4;
            else
                Phase(n)=3*pi/4;
            end
        case 3
            if Data(n)==0
                Phase(n)=pi/2;
            else
                Phase(n)=pi;
            end
        case 4
            if Data(n)==0
                Phase(n)=3*pi/4;
            else
                Phase(n)=5*pi/4;
            end            
    end
end
end

function Data=Rcv(phiA,Basis)
global showvec
size=length(phiA(1,:));
Data=zeros(1,size);
Pr=zeros(1,size);
phiB=(Basis-1)*pi/4;
k_DL=0;

for n=1:size
    Pr(n)=round(sin(phiA(n)-phiB(n)+k_DL)^2,3);
    if Pr(n)==0 || Pr(n)==1
        Data(n)=Pr(n);
    else
        Data(n)=randi([0 1],1,1);
    end
end
disp('Pr')
disp(vpa(Pr(1:showvec)))
end

function [Phase,DataE]=Intruder(Phase)
global showvec
size=length(Phase);
BasisE=randi([0 1],1,size);
% BasisE=zeros(1,size);
% BasisE=ones(1,size);
disp('Eve Basis')
disp(BasisE(1:showvec));
DataE=Rcv(Phase,BasisE);
disp('Eve Data')
disp(DataE(1:showvec));
Phase=Snd(DataE,BasisE);
end

function rb=randbin(p,size)
    rb=floor(rand([1,size])+p);
end