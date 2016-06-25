function [ R, b] = _givens(A,b)


	% functie care calculeaza factorizarea Q R , folosind rotatii givens si
	% aduce sistemul la o forma superior triunghiulara
	% R - factor superior triunghiular
	% b - vectorul termenilor liberi
	
	
	[m, n] = size(A);
	
	
	
	
	for k = 1:n
		for i = k+1:m
		
			r = sqrt( A(k,k)^2 + A(i,k)^2);
			c = A(k,k)/r;
			s = A(i,k)/r;



			% aplicam rotatia matricei A pt a obtine R
			t = c*A(k,k:n) + s*A(i,k:n);
			A(i,k:n) = -s*A(k,k:n) + c*A(i,k:n);
			A(k,k:n) = t;


			% aplicam rotatia vectorului termenilor liberi b

			t = c*b(k) + s*b(i);
			b(i) = -s*b(k) + c*b(i);
			b(k) = t;

		end
	end

	R = A;



end

			
