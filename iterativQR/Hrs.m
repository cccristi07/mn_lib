function A  = Hrs(u, beta, A)


	% functie care aplica la stanga reflectorul householder H = I - u*u'/beta matricii A:
	%       H * A = (I - u*u'/beta) * A = A - u*u'*A/beta

	

	[m n] = size(A);

	for i = 1 : n

		A(:,i) = A(:,i) - u*u'*A(:,i)/beta; % reflectorul se aplica fiecarei coloane
	
	end

end
