function [Q, R]  = householderQR(A)
% functie care determina factorizarea QR utilizand motoda householder


%      Intrari: A = matricea oarecare
%
%
%
%      Iesiri: Q = factorul ortogonal
%              R = factorul superior triunghiular



	[m n] = size(A);

	r = min(m-1,n); %  reflectorii  se aplică coloanelor

	Q = eye(m); % Matricea ortogonala Q

	for i = 1:r

		[u, A(i:m,i), beta] = hsX(A(i:m,i),1); % aplicam reflectorul householder de indice i coloanei i

		

		for j = i+1:n
			A(i:m,j) = hsY(u,A(i:m,j),beta);
		end

		% calculam matricea Q = P*Q = (I -u_i*u_i'/beta)*Q = Q - u_i*u_i'*Q/beta

		%u = [ zeros(i-1,1) ; u];
		
		for j = 1:m
			Q(i:m,j) = hsY(u,Q(i:m,j),beta);

		%Q = Q - u*(u')*Q/beta;
	end

	R = A;
end

