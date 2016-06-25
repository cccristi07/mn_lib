function [lambda, v] = MPIu(A, tol, steps,u)

	% calculeaza vectorul propriu asociat valorii proprii celei mai apropiate de valoarea u


	[m, n] = size(A);

	if m ~= n 
		disp('Matrice nepatratica');
		return;
	end


	v = rand(n,1);
	v = v/norm(v);
	i = 1;
	e = 1;

	while e > tol && i < steps 

		lambda = v'*A*v;
		z = (u*eye(n) -A)\v;
		z = z/norm(z);
		e = abs(1 - z'*v);
		v = z;
		i = i+1;
	end

end