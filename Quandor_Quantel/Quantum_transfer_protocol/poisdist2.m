mu=0.2
poirand=poissrnd(mu,1,100);
disp(poirand(1:20))
[lambdahat,lambdaci] = poissfit(poirand)