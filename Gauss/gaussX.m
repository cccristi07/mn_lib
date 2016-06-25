function [  x , m ]  = gaussX( x, p )


		% functie care creeaza un vector gauss care anuleaza componentele de la p+1 pana la n
		% elementul x(p) este luat ca pivot

		n = length(x);
		m = zeros(n,1);
		x = x(:); % ne asiguram ca e vector coloana

        m(1:p) = 0;
        m(p+1:end) = x(p+1:end)/x(p);
        x(p+1:end) = 0;
        
end



