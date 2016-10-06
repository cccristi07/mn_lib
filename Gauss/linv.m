function LI = linv(L)
% functie care inverseaza o matrice inferior triunghiulara L

%       Intrari:  L = matrice inferior triunghiulara L
%       Iesiri : LI = inversa lui L 
%
%

	n = length(L(1,:));
	
	I = eye(n);
	LI = ltris(L, I(:,1));
	
	for i = 2:n 
            
            LI = [ LI , ltris(L, I(:,i))];
        end
        
end
