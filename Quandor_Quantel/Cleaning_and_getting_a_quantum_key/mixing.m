% mixing
% index(i)=round((N-1-i))*ri
% where
% ri - random naumbe
% N - length of key
clear
N=25
key=randi([0,1],1,N)
ri=rand(1,N)
for i=1:N
    index(i)=round((N-i+1)*ri(i))+1;
end
disp(index)
KK=zeros(N,N);
sum(key)
[muhat,sigmahat,muci,sigmaci]=normfit(key)
for i=1:N
    KK(i,:)=key;
    temp=key(index(i));
    key(index(i))=key(N-i+1);
    key(N-i+1)=temp; 
end
sum(key)
disp(KK)
[muhat,sigmahat,muci,sigmaci]=normfit(key)

