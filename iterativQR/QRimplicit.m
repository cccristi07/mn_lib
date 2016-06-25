function H = QRimplicit(A, tol)


	[m, n] = size(A);

	[Q,A] = HQ(A); % aducem la forma superior Hessenberg

	p = 0;
	q = 0;
	cont_it = 0;

	while q < n 
		
		% anulam elemente subdiagonale neglijabile

		for i = p+1 : n-q+1

			if abs( A(i+1,i)  ) <= tol*( abs(A(i,i)) + abs(A(i+1,i+1)))
				A(i+1,i+1) = 0;
			end
		end

		continua = 1;

		while continua = 1

			if q > n
				break;
			end

			if A(n-q,n-q-1) == 0
				q = q+1;
				cont_it = 0;

			elseif A(n-q-1,n-q-2) == 0
				q = q+2;
				cont_it = 0;
			
			else
				continua = 0;
			end

		end
		
