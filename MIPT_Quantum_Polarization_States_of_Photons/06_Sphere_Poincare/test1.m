clear
format short
ket_H=[1;0]
ket_V=[0;1]
ket_45=[2^(1/2)/2;2^(1/2)/2]
ket_135=[-(2^(1/2)*1i)/2;(2^(1/2)*1i)/2]

sig1=[0 1;1 0]    % - Rotate the polarization plane -45 grad
sig2=[0 -i;i 0]   % - Phase shift -45 grad
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

sig_45=zeros(2,4);
sig_45(:,1)=ket_45;
for j=1:3
    sig_45(:,j+1)=sigma(:,:,j)*ket_45;
end
sig_45

sig_135=zeros(2,4);
sig_135(:,1)=ket_135;
for j=1:3
    sig_135(:,j+1)=sigma(:,:,j)*ket_135;
end
sig_135

UM45_mat=zeros(2,4);
UM45_mat(:,1)=UM45*ket_H;
UM45_mat(:,2)=UM45*ket_V;
UM45_mat(:,3)=UM45*ket_45;
UM45_mat(:,4)=UM45*ket_135;
UM45_mat

UP45_mat=zeros(2,4);
UP45_mat(:,1)=UP45*ket_H;
UP45_mat(:,2)=UP45*ket_V;
UP45_mat(:,3)=UP45*ket_45;
UP45_mat(:,4)=UP45*ket_135;
UP45_mat