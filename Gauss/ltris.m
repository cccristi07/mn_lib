function x = ltris(L,b)
% functie care rezolva un sistem de ecuatii L*x = b,

        %       Intrari:  L = Matrice inferior triunghiulara
        %                 b = vectorul termenilor liberi
        %
        %       Iesiri: x = rezultatul rezolvarii sistemului




       b = b(:); %ne asiguram ca vectorul b este coloana
       x = b;
       n = length(b);
       
       for i = 1 : n
      
            x(i) = x(i) - L(i,1:i-1)*x(1:i-1);
            x(i) = x(i)/L(i,i);
       end

       
       
end
