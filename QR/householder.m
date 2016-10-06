function [R, b]  = householder(A, b)
% functie care realizeaza triangularizarea ortogonala a sistemului A*x = b


%
%       Intrari: A = matrice 
%                b = vectorul termenilor liberi
%
%       Iesiri:  R = matricea A superior triunghiulara in urma aplicarii transformarii ortogonale Q'*A
%                b = vectorul termenilor liberi in urma aplicarii transformarii ortogonale Q'*b



	[m,n] = size(A);

	r = min(m-1,n);

	for i = 1:r

		[u, A(i:m,i), beta] = hsX(A(i:m,i),1);

		for j = i+1:n

			A(i:m,j) = hsY(u, A(i:m,j), beta);
		end

		b(i:m) = hsY(u, b(i:m), beta);
	end

	R = A;

end