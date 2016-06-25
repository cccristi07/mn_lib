function x = cmmp(A,b)

	% functia rezolva un sistem supradeterminat A*x = b cu m > n
	%   x = _A*b=(A'A)^-1A'b; unde _A este pseudoinversa
	%  _A = (R'Q'QR)^-1R'Q' = ( R'R)^-1R'Q'
	% A e R^(m*n)
	% b e R^(m)
	% x e R^(n)
	% Q e R^(m*m)
	% R e R^(m*n)
	
	
	
	[Q, R] = givensQR(A);
	pA = inv( R'*R)*R'*Q';
	disp(pA);
	x = pA*b;

	
	
	
end
