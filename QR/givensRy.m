function y = givensRy(y,c,s)

	% functie care aplica rotatia givens unui vector oarecare y
	
	
	t = c*y(1) + s*y(2);
	l = -s*y(1) + c*y(2);
	
	y(1) = t;
	y(2) = l;

end
