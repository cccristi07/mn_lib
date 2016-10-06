function [A, p] = GPP(A)
% Matricea U superior triunghiulara se memoreaza deasupra diagonalei principale a lui A
% multiplicatorii gausieni sunt depozitati in triunghiul inferior a lui A
% U = (Mn*Pn) * ... * (M1P1)*A
% vectorul p memoreaza permutarile liniilor i < -- > p(i)



	[m, n] = size(A);

	if m ~= n 
		disp('Dimensiuni incompatibile');
		return;
	end


	L = eye(n);

	for k = 1:n-1

		[~, ik ] = max( abs( A(k:n,k)));

		ik = ik + k - 1;

		p(k) = ik;

		% interschimbam liniile p(k) si k
		A([p(k) k], k:n) = A([k p(k)], k:n);
		
		

		[A(:,k), m] = gaussX(A(:,k),k); % aplicăm vectorul gauss coloanei i

		A(k+1:end,k) = m(k+1:end);

		for i = k+1:n

			A(:,i) = gaussY(A(:,i),m,k);
		end
	end
end
