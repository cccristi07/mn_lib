function y = hsY(u, y, beta)
% Aplica reflectorul householder u, cu scalarea beta unui vector y

%        Intrari:    u = reflector householder
%                    y = vectorul asupra caruia aplicam transformarea householder
%                 beta = coeficientul de scalare
%        
%
%        Iesiri:     y = vectorul transformat
%  
	
	
	m = length(u);
	
	R = -u(1:m)*u(1:m)'/beta;
	y(1:m) = y(1:m) + R*y(1:m);

end
