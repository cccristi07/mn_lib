function [Q, R] = givensQR(A)


	% functie care calculeaza factorizarea Q R , folosind rotatiile givens
	
	
	
	[m, n] = size(A);
	
	Q = eye(m); % matricea ortogonală
	
	
	for k = 1:n
		for i = k+1:m
		
			r = sqrt( A(k,k)^2 + A(i,k)^2);
			c = A(k,k)/r;
			s = A(i,k)/r;

			t = c*A(k,k:n) + s*A(i,k:n);
			A(i,k:n) = -s*A(k,k:n) + c*A(i,k:n);
			A(k,k:n) = t;


			t = c*Q(k,:) + s*Q(i,:);
			Q(i,:) = -s*Q(k,:) + c*Q(i,:);
			Q(k,:) = t;

		end
	end


	Q = Q';
	R = A;


end

			
