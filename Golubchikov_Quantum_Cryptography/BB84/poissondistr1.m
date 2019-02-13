clear
mu=0.2
size=1000
pr=poisdistr(mu,size);
disp(pr(1:20))

function poisrand=poisdistr(mu,size)
d(1)=0;
for n=0:9
    p(n+1)=mu^n*exp(-mu)/factorial(n);
    d(n+1)=sum(p(1:n));
end
% disp(p);
% disp(d);
unirand=rand(1,size);
poisrand=zeros(1,size);
for j=1:size
    for n=0:8
        if unirand(j)>=d(n+1) && unirand(j)<d(n+2)
            poisrand(j)=n;
            break;
        end       
    end
end
end
