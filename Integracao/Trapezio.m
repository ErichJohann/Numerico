%%%              METODOS DE INTEGRACAO NUMERICA
%%%  Este programa resolve uma integral definida pela Regra do Trapezio
%%%  IT = h/2[f(a)+2f(x1)+2f(x2)+...+2f(x(n-1))+f(b)]

function TrapezioModelo()
 %clc
 format long
for n = 1:5000
 a = 0.0; %input('Entre com o limite inferior "a" da integral definida: ');
 b = 1.0; %input('Entre com o limite superior "b" da integral definida: ');
 %n = input('Entre com o numero "n" de subintervalos: ');

 % Instancias de testes:
 %   Intervalo sempre sera [0,1].
 %   Valores de n: 4 e 100. Funcoes: y=4, y=x, y=x^2, y=x^3 e y=x^4. 
 
 % Calcular h 
 h = (b-a)/n;
 % Calcular soma = f(x1)+f(x2)+...+f(x(n-1)). Lembrar: xi = a+i*h, i=1,...,n-1
 soma = 0;
 for i = 1:n-1
     soma = soma + f(a + i*h); 
 end
 % Calcular Integral = h/2*( f(a) + 2*soma + f(b) )
 Integral = h/2 * (f(a) + 2*soma + f(b));
 
 if n > 300
 disp(n);
 fprintf('\nValor da integral pela Regra do Trapezio: %9.7f \n\n', Integral);
 end
end
 end

function y = f(t)
 %y = 4;
 %y = t;                     
 %y = t^2;
 %y = t^3;
 %y = t^4;
 
 % -------- Exercícios para casa
 y = sqrt(t); 
 %y = exp(-t^2/2);
 %y = exp(sin(t));
 
 %y = sin(t)/t;
 %y = sqrt(3*(sin(t))^2 + 5*(cos(t))^2);
 %y = nthroot(t^2+1,3); %nthroot(a,n) calcula raiz n-esima de a
 %y = (cos(t))^2/t^2;
end













