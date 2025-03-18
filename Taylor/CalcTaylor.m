% Este programa calcula o valor de uma funcao por serie (polinomio) de Taylor
% Taylor: f(x) = Sum(0,infty,f^(n)(a)/n!*(x-a)^n
% Se a=0: f(x) = Sum(0,infty,f^(n)(0)/n!*x^n    (serie de Maclaurin) 

function CalcTaylorModelo()
 % clc
 format long

 disp('Calculo da expansao de Taylor de uma funcao em torno de a = 0');
 x = input('Entre com o valor de x: ');
 g = input('Entre com o grau do polinomio: ');

 %{s = 0;
 %for k=0:g
  %s = s + coef(k)*x^k/factorial(k);
 %end;

 %            ======= coef(k) = f^(n)(0) ========
 %  --------------------------------------------- 
 %  k         0  1  2  3  4  5  6  7  8  9 10 11 
 %  =============================================
 %  e^x       1  1  1  1  1  1  1  1  1  1  1  1 
 %  cos(x)    1  0 -1  0  1  0 -1  0  1  0 -1  0
 %  sen(x)    0  1  0 -1  0  1  0 -1  0  1  0 -1
 %  =============================================
 %  mod(k,4)  0  1  2  3  0  1  2  3  0  1  2  3
 
 
 X = -2:0.1:2;
 s = zeros(1, length(X));
 Y = f(X);
 for i = 1:length(X)
    for k=0:g
        s(i) = s(i) + coef(k)*X(i)^k/factorial(k);
    end
 end
 plot(X,Y,X,s);
 
 fprintf('Taylor: %12.10f\n',s);
 fprintf('Exato : %12.10f\n',f(x));
 
end

function y = f(t)
% y = exp(t);
% y = cos(t);
  y = sin(t);
end

function c = coef(k)
 %%% funcao exponencial 
 % Implementar coeficientes para função exponencial
 % c = .... 
 
 %c = 1;
  
 %%% funcao cosseno 
 % Implementar coeficientes para função cosseno       
 % c = ....  
 
 %c = 1i^k;
 
 %if m == 0
  %   c = 1;
   % else
    %    if m == 2
     %    c = -1;
      %  else
       %     c = 0;
        %end
 %end
 %%% funcao seno 
 % Implementar coeficientes para função seno    
 % c = ....  
 
 c = 1i^(k+3);
 
%  m = mod(k,4);
 %if m == 1
  %   c = 1;
   % else
    %    if m == 3
     %    c = -1;
      %  else
       %     c = 0;
        %end
% end
 
end


