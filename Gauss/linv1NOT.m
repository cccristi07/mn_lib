function LI = linv1(L)


	n = length(L(1,:));


	for 	j = 1 : n

		LI(j,j) = 1/L(j,j);

		for i = j+1 : n

			for k = j : i-1 

				LI(i,j) = L(i,j) -  L(i,k)*LI(k,j);
            end
            LI(i,j) = LI(i,j)/LI(i,i);
		end
	end

end


