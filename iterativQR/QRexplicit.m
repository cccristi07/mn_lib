function [Q,H]  = QRexplicit(A, steps)



	% algoritmul QR cu deplasare simpla explicita, Francis



	% aducem matricea A la forma superior Hessenber
	[~, H] = HQ(A);
	[m, n] = size(A);
	

	% deoarece H are acelasi spectru ca si A, putem aplica metoda iterativa pt a afla valorile proprii

	i = 1;

	while i < steps

		u = H(n,n); % rata de deplasare a algoritmului
		H = H - eye(n)*u;

		[Q, R] = qr(H); % se poate folosi si householderQR sau givensQR
		H = R*Q + eye(n)*u;
		i = i + 1;


	end

	% H converge catre forma Schur reala a matricii A, unde avem  valori proprii complexe vor aparea blocuri Schur 2x2


end








