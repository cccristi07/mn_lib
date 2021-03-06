function [A, b] = Gauss(A, b)
% functia aplică procesul de eliminare gausiana aducand A la forma sup triunghiulara si 
% modifica vectorul b corespunzator

       %      Intrari: - A =  matrice patratica
       %               - b = vectorul termenilor liberi
       %
       %      Iesiri: - A  = matrice superior triunghiulara
       %              - b  = vectorul termenilor liberi modificat
       %         
       %      Pentru a rezolva sistemul se apelează [A,b] = Gauss(A,b); utris(A,b);


       [m n] = size(A);

       if( m ~= n && n ~= length(b))
              disp('Dimensiuni incompatibilie');
              return;
       end

       for i = 1:n-1


              [ A(:,i) , m  ]  = gaussX(A(:,i),i); %% construm vectorul gauss care anuleaza componentele i+1:n ale liniei i

              b = gaussY(b,m,i);  % aplicam transformarea vectorului de termeni liberi b

              for j = i+1:n
                     A(:,j) = gaussY(A(:,j),m,i);  % aplicam transformarea restului matricei A
              end
       end


end
