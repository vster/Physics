syms x a sig
f=exp(-x^2/(2*sig^2))

I1=int(x^2*f,x,0,inf)

I2=int(f,x,0,inf)

d=I1/I2