function [H, V, b] = ITQR2(H, w)


	% iteratia dubla a algoritmului QR implicit cu pas dublu
	% suprascrie matricea H <-- Q'*H*H(1:min(i+3,n),i:i+2) Q

	[m,n] = size(H);

	% calculam si aplicam reflectorul householder
	[w, V(:,1),b(1)] = Hr(w);

	H(1:3,:) = Hrs(V(:,1), b(1), H(1:3,:));
	H(1 : min (4,n), 1:3) = Hrd(H(1:min(4,n),1:3),V(:,1),b(1));

	% refacem forma hessenberg

	for i = 2:n-2

		[H(i:i+2,i-1), V(:,i),b(i)] = Hr( H(i:i+2, i-1));
		H(i:i+2,i:n) = Hrs(V(:,i), b(i), H(i:i+2,i:n));
		H(1:min(i+3,n),i:i+2) = Hrd(H(1:min(i+3,n),i:i+2), V(:,i), b(i));
	end


	[ H(n-1:n,n-2),V(1:2,n-1), b(n-1)  ] = Hr( H(n-1:n,n-2));

	H(n-1:n,n-1:n) = Hrs(V(1:2,n-1), b(n-1), H(n-1:n,n-1:n));
	H(:,n-1:n)     = Hrd(H(:,n-1:n), V(1:2,n-1), b(n-1));

end
