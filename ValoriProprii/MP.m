function [ lambda, y ] = MP(A, tol, steps)

	% functie care calculeaza vectorul propriu asociat valorii proprii dominante 
	% si valoarea proprie asociată, 
	% criteriul de oprire se atinge atunci cand | 1 - vk'*vk-1 | < tol si nu s-a iesit din nr maxim de pasi


	[m n] = size(A);

	if m ~= n
		disp('Matrice nepatratica');
		return;
	end


	y = rand(n,1);
	y = y/norm(y);
	e = 1;
	i = 1;



	while e > tol && i < steps

		z = A*y;
		z = z/norm(z);
		e = abs( 1 - z'*y);
		y = z;
		i = i+1;
	end

	lambda = y'*A*y;

end














