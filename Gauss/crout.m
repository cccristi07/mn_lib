function [L, U] = crout(A)

	% functia calculeaza factorizarea Crout cu matricea U superior triunghiulara unitate
	% algoritmul memoreaza : U in triunghiul superior a lui A, fara diagonala
	% 					     L in triunghiul inferior a lui A,   cu diagonala

	[m n] = size(A);

	if m ~= n
		disp('Matrice nepatratica');
		return;
	end

	L = eye(n);
	U = eye(n);


	for k = 1 : n

		for i = k : n

			s = A(i,1:k-1)*A(1:k-1,k);
			A(i,k) = A(i,k) - s;
		end

		for j = k+1:n
				s = A(k,1:k-1)*A(1:k-1,j);
				A(k,j) = (A(k,j) - s)/A(k,k);
		end

	end

	% obtinem matricile L, U din A

	L = tril(A);

	U = triu(A) - diag(diag(A)) + eye(n);


end



