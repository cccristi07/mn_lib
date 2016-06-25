function A  = Hrd(A, u, beta)


	% functie care aplica la dreapta reflectorul householder H = I - u*u'/beta matricii A:
	%       A * H = A * (I - u*u'/beta)  = A - A*u*u'/beta

	

	[m n] = size(A);

	for i = 1 : m

		A(i,:) = A(i,:) - A(i,:)*u*u'/beta;
	end

end

