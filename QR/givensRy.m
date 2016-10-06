function y = givensRy(y,c,s)
% functie care aplica rotatia givens unui vector oarecare y
	
%
%           Intrari: y = vectorul asupra caruia vrem sa aplicam rotatia
%                    c, s = coeficientii din rotatorul givens
% 
%           Iesiri:  y = vectorul transformat



   t = c*y(1) + s*y(2);
   l = -s*y(1) + c*y(2);

   y(1) = t;
   y(2) = l;

end
