function x = utris(U,b)

      % functie care rezolva sistemul liniar de ecuatii U*x = b
      % U superior triunghiulara
      % b vectorul termenilor liberi
      
      b = b(:);
      x = b;
      n = length(b);
      
      for i = n:-1:1

            x(i) = x(i) - U(i,i+1:n)*x(i+1:n);
            x(i) = x(i)/U(i,i);
      
      end
      
end