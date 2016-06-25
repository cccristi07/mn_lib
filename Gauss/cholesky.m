function L  = cholesky(A)

	% functia ne da factorizarea Cholesky A = L* L'


	[m n] = size(A);

	if m ~= n 
		disp('Matrice nepatratica');
		return;
	end

	L = eye(n);

	L(1,1) = sqrt(A(1,1));


	for k = 1 : n


		if k > 1
			s = A(k,1:k-1)*A(k,1:k-1)';
		elseif k == 1
			s = 0;
		end


		alpha = A(k,k) - s;

		if alpha <= 0 
			disp('A nu este pozitiv definita');
			return;
		end

		A(k,k) = sqrt(alpha);
		L(k,k) = sqrt(alpha);

		for i = k+1:n

			s = A(i,1:k-1)*A(k,1:k-1)';
			if k == 1
				s = 0;
			end
			A(i,k) = ( A(i,k) - s)/A(k,k);
			L(i,k) = A(i,k);
		end
	end


	% obtinem matricea L din triunghiul inferior a lui A
	L = tril(A); 

end
