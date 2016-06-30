function x = cmmp(A,b)

	% functia rezolva un sistem supradeterminat A*x = b cu m > n
	
	
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
