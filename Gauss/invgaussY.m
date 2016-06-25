function y = invgaussY(y, m, p)

	% functie care aplica transformarea inversa gauss Mi = M^-1 = I  + m*ek'
	% Mi*y = y + m* (ek'*y)

	y = y(:);
	m = m(:);
	y = y + m*y(p);

end