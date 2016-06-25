function A = Grd(A, c, s)

	% functie care inmulteste la dreapta matricea A cu o rotatie Givens de ordin 2
	% A*P


	t = c*A(:,1) + s*A(:,2);
	A(:,2) = -s*A(:,1) + c*A(:,2);
	A(:,1) = t;

end

