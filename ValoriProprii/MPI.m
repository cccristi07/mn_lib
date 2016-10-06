function [lambda, v] = MPI(A, tol, steps)
% functie care returneaza vectorul atasat valorii proprii dominante + valoarea proprie 
% folosind algoritmul puterii inverse, executat cu o toleranta tol si intr-un numar de
% pasi - steps


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
		z = (lambda*eye(n) -A)\v;
		z = z/norm(z);
		e = abs(1 - z'*v);
		v = z;
		i = i+1;
	end

end



