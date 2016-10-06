% rutina de testare a performantei algoritmului de factorizare QR cu rotatori Givens
timp = zeros(110,1);
for i = 1:150

	A = rand(i);
	
	id = tic();
	givensQR(A);
	timp(i) = toc(id);
	%fprintf("Pentru matrice de %d x %d timpul este %fs\n",i,i,timp(i));
end

plot(timp);
