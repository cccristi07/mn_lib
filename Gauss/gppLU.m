function [L, U, p]  =  gppLU(A)
% functie care realizeaza factorizarea LU folosind algoritmul de eliminare gausiana cu pivotare partiala
% U  = (Mn-1Pn-1) * ... *(M1P1) * A
% U =L* A
% L= (P1*M1^-1) * ... * (Pn-1*Mn-1^-1) 
% vectorul p memoreaza permutarile facute intre liniile matricei L


       [m , n] = size(A);

       if m ~= n 
              disp('Dimensiuni incompatibile');
              return;
       end

       [U , p ] = GPP(A);

       M = tril(U) - diag( diag(U) ) ; %% matricea care contine multiplicatorii gausieni
       U = triu(U);

       L = eye(n);


       for i = n-1:-1:1



       
              %L(:,i) = invgaussY( L(:,i), M(:,i), i);

              for j = 1:n

                     L(:,j) = invgaussY( L(:,j), M(:,i),i);
              end

              % inversam liniile i si p(i)
              L([ i p(i) ] , :) = L([ p(i) i] , :);

       end

end





