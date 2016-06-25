function A = Grs(c,s, A)

	% inmultirea matricii A la stanga cu o rotatie Givens de ordin 2 
	%	P'*A


	t = c*A(1,:) + s*A(2,:);
	A(2,:) = -s*A(1,:) + c*A(2,:);
	A(1,:) = t;

end
