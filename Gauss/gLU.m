function [L , U] =  gLU(A)

	%  functie care realizeaza descompunerea LU a matricei A


	[m n] = size(A);

	if n ~= m
		disp('Matricea nu este patratica');
		return
	end

	L = eye(n);

	for i = 1:n-1

		% calculam vectorul m care anuleaza elementele de la i+1:n in coloana i

		[A(:,i), m] = gaussX(A(:,i),i); % aplicăm vectorul gauss coloanei i

		L(:,i) = invgaussY(L(:,i),m,i); % transformările gauss se acumuleaza in matricea L


		for j = i+1:n
			A(:,j) = gaussY(A(:,j),m,i); % aplicam vectorul gauss coloanelor i+1:n
			L(:,j) = invgaussY(L(:,j),m,i);
		end

	end
	U = A;
end
