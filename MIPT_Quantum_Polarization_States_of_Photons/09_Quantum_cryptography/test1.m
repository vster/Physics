clear
format short
ket_H=[1;0]
ket_V=[0;1]
ket_R=[2^(1/2)/2;2^(1/2)/2]
ket_L=[-(2^(1/2))/2;(2^(1/2))/2]

sig1=[0 1;1 0]    
sig2=[0 -i;i 0]   
sig3=[1 0;0 -1]

UM45=1/sqrt(2)*[1 1;-1 1]
UP45=1/sqrt(2)*[1 -1;1 1]

sigma(:,:,1)=sig1
sigma(:,:,2)=sig2
sigma(:,:,3)=sig3

sig_H=zeros(2,4);
sig_H(:,1)=ket_H;
for j=1:3
    sig_H(:,j+1)=sigma(:,:,j)*ket_H;
end
sig_H

sig_V=zeros(2,4);
sig_V(:,1)=ket_V;
for j=1:3
    sig_V(:,j+1)=sigma(:,:,j)*ket_V;
end
sig_V

sig_R=zeros(2,4);
sig_R(:,1)=ket_R;
for j=1:3
    sig_R(:,j+1)=sigma(:,:,j)*ket_R;
end
sig_R

sig_L=zeros(2,4);
sig_L(:,1)=ket_L;
for j=1:3
    sig_L(:,j+1)=sigma(:,:,j)*ket_L;
end
sig_L

UM45_mat=zeros(2,4);
UM45_mat(:,1)=UM45*ket_H;
UM45_mat(:,2)=UM45*ket_V;
UM45_mat(:,3)=UM45*ket_R;
UM45_mat(:,4)=UM45*ket_L;
UM45_mat

UP45_mat=zeros(2,4);
UP45_mat(:,1)=UP45*ket_H;
UP45_mat(:,2)=UP45*ket_V;
UP45_mat(:,3)=UP45*ket_R;
UP45_mat(:,4)=UP45*ket_L;
UP45_mat