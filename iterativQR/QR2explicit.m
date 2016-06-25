function H = QR2explicit(A, steps);

	% functia aduce matricea A la forma Schur reala prin Algoritmul QR explicit cu pasi dublii
	%
	%	Intrarea: matricea A patratica
	%	Iesire  : matricea H reprezentand forma Schur reala, pe diagonala avem valori proprii daca sunt reale
	%             sau blocuri Schur 2x2 daca sunt valori proprii complex conjugate
	%



	

	[m, n] = size(A);

	if m ~= n 
		disp('Matrice nepatratica');
		return;
	end

	% aducem matricea A la forma superior Hessenberg

	[~,H] = HQ(A);


	%etapa iterativa

	

	i = 1;

	while i < steps
		
		s = H(n-1,n-1) + H(n,n);
		p = H(n-1,n-1)*H(n,n) - H(n-1,n)*H(n,n-1);
		M = H^2 - s*H + p*eye(n);
		[Qh,Rh] = qr(M);
		H = H*Qh;
		H = Qh'*H;
		i = i+1;
	end

end




