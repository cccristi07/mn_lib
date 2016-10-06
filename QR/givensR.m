function [ x1, x2, c, s]  = givensR(x1,x2)
% functie care construieste rotatia givens si o aplica lui x


%            Intrari: x1, x2 = elementele din x asupra carora se vor aplica rotatorul
%
%            Iesiri   x1, x2 = elemntele din x modificate
%                     c, s   = coeficientii rotatorului givens



   r = norm([x1,x2]);

   if( abs(x1) > abs(x2) )
   	   r = sign(x1)*r;
    else
	   r = sign(x2)*r;
   end

   c = x1/r;
   s = x2/r;


   x1 = r;
   x2 = 0;
	
	
end
	
	
	
