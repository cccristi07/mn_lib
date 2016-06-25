function [b, u, beta] = Hr(a)

	% functia calculeaza un reflector householder astfel incat b(2:n) = U*a(2:n) = 0;


	b = a;
	n = length(a);
	sigma = sign(a(1))*norm(a(1:end));
	u =  [  1 + a(1)/sigma; a(2:end)/sigma ];
	beta = u(1);
	b(1) = -sigma;
	b(2:end) = 0;

end




