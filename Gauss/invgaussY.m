function y = invgaussY(y, m, p)

   % functie care aplica transformarea inversa gauss Mi = M^-1 = I  + m*ek'
   % Mi*y = y + m* (ek'*y)
   % 
   % Intrari:   y = vectorul caruia vrem sa ii aplicam transformarea
   %            m = vectorul gauss cu care aplicam transformarea
   %            p = pozitia pivotului 
   % 
   % Transformarea profita de usurinta inversarii matricii de transformare Gauss

       y = y(:);
       m = m(:);
       y = y + m*y(p);

end
