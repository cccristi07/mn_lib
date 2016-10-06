function [  x , m ]  = gaussX( x, p )
% functie care creeaza un vector Gauss care anuleaza componentele de la p+1 pana la n
% elementul x(p) este luat ca pivot
    % Intrari:  - x un vector n dimensional
    %           - p pozitia pivotului
    %
    % Iesiri:   - x vectorul cu componentele de la p+1 la n anulate
    %           - m vectorul gauss care va realiza transformarea
    %
       
       
       
       n = length(x);
       m = zeros(n,1);
       x = x(:); % ne asiguram ca e vector coloana

       m(1:p) = 0;
       m(p+1:end) = x(p+1:end)/x(p);
       x(p+1:end) = 0;

end



