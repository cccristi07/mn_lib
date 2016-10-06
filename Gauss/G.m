function A  = G(A)

% functia determina sistemul superior triunghiular din A si memoreaza
% multiplicatorii gausieni in triunghiul inferior al lui A



       [m n] = size(A);

       if m ~= n
              disp('Matricea nu este patratica');
              return;
       end

       for i = 1:n-1

              % calculam vectorul m care anuleaza elementele de la i+1:n in coloana i

              [A(:,i), m] = gaussX(A(:,i),i); % aplicăm vectorul gauss coloanei i

              A(i+1:end,i) = m(i+1:end); % se memoreaza multiplicatorii pe triunghiul inferior
              
              for j = i+1:n
                     A(:,j) = gaussY(A(:,j),m,i); % aplicam vectorul gauss coloanelor i+1:n
              end

       end

