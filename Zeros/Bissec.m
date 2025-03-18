%%%%%   Este programa encontra um zero REAL de uma funcao pelo  %%%%%%
%%%%%                    METODO DA BISSECAO                     %%%%%%

function BissecModelo()
 %clc
 format long

 %%% Criterio para x ser raiz: valor absoluto de f(x) menor que "prec"
 %%% Se os dados fossem digitados:
 %a =    input('Entre com o limite inferior do intervalo [a,b]: ');
 %b =    input('Entre com o limite superior do intervalo [a,b]: ');
 %prec = input('Entre com a precisao desejada: ');

 %%% Intervalos e precisoes utilizados para cada funcao
 %a=1; b=3; prec=10^-6;     %y = t*log10(t) - 1 
 %a=0; b=2; prec=10^-4;     %y = t^2 - .5      
 %a=2; b=4; prec=10^-4;     %y = t^3 - 9*t + 3 
 a = 0; b = 3; prec = 10^(-6);
 
 fa = f(a);
 fb = f(b);

 if abs(b - a) < prec
    disp("Já é aproximação válida");
    return;
 end
 
 % Abandonar se a for um zero
 % Abandonar se b for um zero
 % Abandonar se nao houver garantia de raiz no intervalo
 if fa * fb > 0
     disp("Não ha garantia de raiz no intervalo fornecido");
     return;
 end
 
 MaxIter = 1000;
 for k = 1:MaxIter
  % Calcular a bissecao x e o valor da funcao em x
  
  x = (a + b)/2;
  fx = f(x);
  %if abs(fx) < prec
  if abs(b - a) < prec
     break;
  end
  if fa * fx < 0
      b = x;
  else
      a = x;
  end
  
  
  % Verificar se x jah eh um zero: se sim abandonar iteracoes
  
  % Ajustar "a" ou "b" e o valor correspondente da funcao para que o inter-
  % valo [a,b] diminua mas continue contendo a raiz 
 end

 % imprimir raiz encontrada, valor da funcao na raiz e o numero de iteracoes
 disp ('*****  A SOLUCAO ENCONTRADA PELO METODO DA BISSECCAO FOI:  *****');
 disp (x);
 disp ('O valor de f(x) calculado na solucao foi: ');
 disp (fx);
 disp ('O numero de iteracoes foi: '); 
 disp (k);

end

function y = f(t)
 %y = t*log10(t) - 1;
 %y = t^2 - .5;
 %y = t^3 - 9*t + 3;
 y = 100*t -100*exp(1);
end





















