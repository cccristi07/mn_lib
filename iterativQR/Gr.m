function [b, c, s] = Gr(a)

	% calculul unei rotatii Givens de ordin 2 
	% b = P'*a(2) = 0


	[~,i] = max(abs(a));
	r = sign(a(i))*norm(a);

	c = a(1)/r;
	s = a(2)/r;
	b = a;

	% se aplica rotatia vectorului a
	b(1) =  r;  
	b(2) =  0;

end
