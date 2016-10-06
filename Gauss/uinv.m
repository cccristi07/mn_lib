function UI = uinv(U)
% functie care inverseaza o matrice superior triunghiulara U

        % Intrari: U = matrice superior triunghiulara
        % Iesiri  UI = Inversa matricei U



       n = length(U(1,:));
       
       I = eye(n);
       UI = utris(U, I(:,1));
       
       for i = 2:n 

            UI = [ UI , utris(U, I(:,i))]; % se rezolva succesiv sisteme de tipul U*xk = ek,  ek = vector canonic
        
        end
        
end
