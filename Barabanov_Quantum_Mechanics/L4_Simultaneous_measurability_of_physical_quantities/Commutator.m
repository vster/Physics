% Commutator
function c=Commutator(f1,f2,f)
c=simplify(f1(f2(f))-f2(f1(f)));
end