function x = cmmp(A,b)

	% functia rezolva un sistem supradeterminat A*x = b cu m > n
	%   x = _A*b=(A'A)^-1A'b; unde _A este pseudoinversa
	%  _A = (R'Q'QR)^-1R'Q' = ( R'R)^-1R'Q'
	% A e R^(m*n)
	% b e R^(m)
	% x e R^(n)
	% Q e R^(m*m)
	% R e R^(m*n)
	
	
	[m,n] = size(A);
	n = min(m,n);  % ar trebui sa fie nr de coloane, i.e. sistem supradeterminat
	[Q, R] = givensQR(A);
	Q = Q';
	Rh = R(1:n,1:n);
	Qh = Q(1:n,1:end);
	b = Qh*b;
	% rezolvam sistemul Rh*x = Qh*b
	x = Rh\b;
 
end
