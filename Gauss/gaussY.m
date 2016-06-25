function y = gaussY(y, m, p)

	% aplica transformarea ITE M = I - m*ep' unui vector oarecare y
	% M*y = (I - m*ep')*y = y - m* (ep'*y)


	y = y(:);
	m = m(:);
	y = y - m*y(p);

end
