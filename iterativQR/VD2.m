function w = VD2(H)

	% functie care calculeaza vectorul de deplasare implicita pentru
	% algoritmul QR implicit cu pas dublu, w e R^3

	[m, n] = size(H);

	if m ~= n 
		disp('Matrice nepatratica');
		return;
	end



	s = H(n-1,n-1) + H(n,n);
	p = H(n-1,n-1)*H(n,n) + H(n-1,n)*H(n,n-1);
	
	w = [ H(1,1)^2 + H(1,2)*H(2,1) - s*H(1,1) +p , H(2,1)*(H(1,1)+H(2,2)-s) , H(2,1)*H(3,2) ]';

end


