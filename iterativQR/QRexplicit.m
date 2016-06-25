function [Q,H] = 	 QRexplicit(A)



	% algoritmul QR cu deplasare simpla explicita



	% aducem matricea A la forma superior Hessenber
	[~, H] = HQ(A);


	[m, n] = size(A);
	Q = eye(n);

	% vectorii in care se acumuleaza coeficientii rotatiilor
	c = zeros(n-1,1);
	s = zeros(n-1,1);

	u = H(n,n);
	H = H - u*eye(n);


	for j = 1:n-1

		[~, c(j),s(j)] = Gr(H(j:j+1,j)); % construim rotatia Givens care anuleaza elementul j+1 din coloana j

		% aplicam rotatia la stanga

		H(j:end,j:end) = Grs(c(j),s(j),H(j:end,j:end));
	end

	% aplicam acum toate rotatiile givens la dreapta matricei

	for j = 1:n-1

		H(j:end, j:end) = Grd(H(j:end,j:end),c(j),s(j));
		Q(j:end, j:end) = Grd(Q(j:end,j:end),c(j),s(j));
	end

	H = H + u*eye(5);

end








