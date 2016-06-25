function y = hsY(u, y, beta)

	% Aplica reflectorul householder u, cu scalarea beta unui vector y
	% y = (I  - u*u'/beta)*y 
	% y = y - u*u'*y/beta
	
	
	m = length(u);
	
	R = -u(1:m)*u(1:m)'/beta;
	y(1:m) = y(1:m) + R*y(1:m);

end
