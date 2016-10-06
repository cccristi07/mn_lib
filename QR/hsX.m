function [u, x, beta] = hsX(x, k)
% hsX genereaza reflectorul householder care lasa primele k-1 componente neschimbate
%  schimba componenta k si anuleaza urmatoarele componente
% P = I - u*u'/beta

%          Intrari:  x = vectorul după care vrem sa generam transformarea householder 
%                    k = componenta de la care se anuleaza elementele
%
%          Iesiri:   u = reflectorul householder corespunzator lui x si k
%                    x = vectorul transformat
%                 beta = coeficientul de scalare
	


    m = length(x); % ordinul relfectorului
    sigma = sign(x(k))*norm(x(k:end));
	
    u = [ zeros(k-1,1) ; 1 + x(k)/sigma; x(k+1:end)/sigma];
    x(k+1:end) = 0;
    x(k) = -sigma;
    beta = u(k);

end 
	 
	
	
