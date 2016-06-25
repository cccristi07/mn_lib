
timp = zeros(10,1);

for i = 200:210

	A = rand(i);
	id = tic();
        householderQR(A);
        timp(i-199) = toc(id);
end
