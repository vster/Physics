syms a
Sw(@sin,@cos,a)

function a=Sw(f1,f2,arg)
a=f1(f2(arg))-f2(f1(arg))
end