function [Q, R , b] = givens(A,b)


    % functie care calculeaza factorizarea Q R , folosind rotatii givens si
    % aduce sistemul la o forma superior triunghiulara
    % R - factor superior triunghiular
    % b - vectorul termenilor liberi
    
    
    [m, n] = size(A);
    
    Q = eye(m); % matricea ortogonală
    
    
    for k = 1:n
        for i = k+1:m
        
            r = sqrt( A(k,k)^2 + A(i,k)^2);
            c = A(k,k)/r;
            s = A(i,k)/r;

            % aplicam rotatia matricei A pt a obtine R
            t = c*A(k,k:n) + s*A(i,k:n);
            A(i,k:n) = -s*A(k,k:n) + c*A(i,k:n);
            A(k,k:n) = t;

            % acumulam rotatiile in matrice ortogonala Q
            t = c*Q(k,:) + s*Q(i,:);
            Q(i,:) = -s*Q(k,:) + c*Q(i,:);
            Q(k,:) = t;

            % aplicam rotatia vectorului termenilor liberi b

            t = c*b(k) + s*b(i);
            b(i) = -s*b(k) + c*b(i);
            b(k) = t;

        end
    end


    Q = Q';
    R = A;


end

            
