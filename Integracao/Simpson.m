%%%              METODOS DE INTEGRACAO NUMERICA
%%% Este programa calcula uma integral definida pela Regra de Simpson
%%% IS = h/3[f(a)+4f(x1)+2f(x2)+...+2f(x(n-2))+4f(x(n-1))+f(b)]

function SimpsonModelo()
 %clc
 format long
 for n = 1:60000
 a = 0;
 b = 1;
 %n = input('Entre com o numero "n" de subintervalos: ');

 % Instancias de testes:
 %   Intervalo sempre sera [0,1].
 %   Valores de n: 4 e 100. Funcoes: y=4, y=x, y=x^2, y=x^3 e y=x^4. 
 
 % Abandonar o calculo se n <= 0 ou n não for par
  
 h =(b-a)/n;
 
 % n           coef
 % ========================
 % 2    1  4  1             
 % 4    1  4  2  4  1       
 % 6    1  4  2  4  2  4  1 
 % ------------------------
 %      0  1  2  3  4  5  6 => i, para n=6, i par:2, i impar:4
 
 
 % Fazer S igual a f(a) + f(b)    # Soma para i = 0 e i = n
 S = f(a) + f(b);
 % Para i variando de 1 ate n-1
 for i = 1:n-1
 %   Calcular coef (4 ou 2)
 if mod(i,2) == 0
     coef = 2;
 else
     coef = 4;
 end
 S = S + coef * f(a + i*h);
 %   Acumular em S o valor de coef multiplicado por f(xi)
 % Fazer Integral igual a h/3 multiplicado por S
 end
 Integral = (h/3) * S;
 if n > 57000
 fprintf('\nValor da integral pelo Metodo de Simpson: %9.7f \n\n', Integral);
 end
 end
end

function y = f(t)
 %y = 4;
 %y = t;                     
 %y = t^2;
 %y = t^3;
 %y = t^4;
 y = sqrt(t);
end











