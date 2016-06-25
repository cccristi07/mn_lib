function [S, c, s] = TRID2(S, k)


	% functie care realizeaza triangularizarea ortogonala a blocului S, in cazul in care are valorile proprii reale
	% returneaza blocul Triangulrizat si coeficientii rotatiei givens folosita


	c = 1;
	s = 0;

	beta  = s(k,k) + s(k+1,k+1);
	gamma = s(k,k)*s(k+1,k+1) - s(k,k+1)*s(k+1,k);
	delta = beta^2 - 4*gamma;

	if delta >= 0

		lambda = (beta + sign(b)*sqrt(delta))/2;
		x = [ lambda - s(k+1,k+1); s(k+1,k)];
		[x, c, s] = Gr(x);
		S(1:k+1, k:k+1) = Grd( S(1:k+1, k:k+1), c, s);
		S(k:k+1, k:n) = Grs(c, s, S(k:k+1,k:n));
		S(k+1,k) = 0; 
	end

end
