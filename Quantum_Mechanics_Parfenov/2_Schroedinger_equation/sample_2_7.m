clear
syms x a real
syms n m integer
psi(n)=sqrt(2/a)*sin(pi*n*x/a)
I=int(psi(m)'*psi(n),x,0,a)
% piecewise(m == n, 1, m + n == 0 & n ~= 0, -1, a == pi/2 & m + n == 0, sin(2*pi*n)/(2*n*pi) - 1, a == pi & m <= n & 1 <= m, 0^(n - m), a == pi & n <= m & 1 <= n, 0^(m - n), m ~= n & m + n ~= 0 | a == pi & (m < n & 1 <= m | n < m & 1 <= n), 0)
% If n~=m then I=0
% If n==m then I=1