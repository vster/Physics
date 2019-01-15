% |phi_n> - |x>,|y>  - old basis
% |f_n> - |R>,|L>  - new basis

% |R>=1/sqrt(2)*(|x>+i*|y>)
% |L>=1/sqrt(2)*(|x>-i*|y>)

syms x y
phi=[x;y]
U=[1/sqrt(2) 1i/sqrt(2); 1/sqrt(2) -1i/sqrt(2)]

f=U*phi

