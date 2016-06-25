function [ Q, H ] = HQ(A)


	% functie care calculeaza forma superior Hessenberg a matricii A, aplicand la stanga si la dreapta
	% reflectori Householder H = Hn-1 *....H1 * A * H1 * ... H*n-1
	%
	%	Intrari : matrice A
	%	Iesiri  : Q - matricea ortogonala cu proprietatea Q'*A*Q = H;
	%			  H - matricea superior Hessenberg obtinuta din A 

	[m, n] = size(A);

	if m ~= n 
		disp('Matricea A nepatratica');
		return;
	end

	Q = eye(n);


	for k = 1 : n-2 	

		[A(k+1:end,k), u, beta] = Hr( A(k+1:end, k)); % calculam reflectorul care anuleaza elementele sub prima subdiagonala
        
        A(k+1:end,k+1:end) = Hrs(u, beta, A(k+1:end,k+1:end));
        A(1:end,k+1:end) = Hrd(A(1:end,k+1:end), u, beta);
        Q(1:end,k+1:end) = Hrd(Q(1:end,k+1:end), u, beta);

    end

    H = A;

end

