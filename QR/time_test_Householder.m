
timp = zeros(150,1);
for i = 1:150

	A = rand(i);
	
	id = tic();
	householderQR(A);
	timp(i) = toc(id);
	fprintf("Pentru matrice de %d x %d timpul este %fs\n",i,i,timp(i));
end

plot(timp);
