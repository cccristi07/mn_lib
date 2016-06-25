function LI = linv(L)

	% functie care inverseaza o matrice inferior triunghiulara L


	n = length(L(1,:));
	
	I = eye(n);
	LI = ltris(L, I(:,1));
	
	for i = 2:n 
            
            LI = [ LI , ltris(L, I(:,i))];
        end
        
end
