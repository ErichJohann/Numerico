% Metodo de Gauss-Seidel para resolver sistema linear Ax=b
clc
format short

% Calcular a solu√ß√£o x para cada sistema abaixo.
% Exemplo 1
%A = [3 -1 -1; 1  5  1; 1  1  7];      
%b = [-2; 14; 24];                  

% Exemplo 2
%A = [1  5  1; 0 -1 -1; 1  1  7];     
%b = [14; -2; 24];  

% Exemplo 3
%A = [1  1; 1 -3]; 
%b = [3; -3];                     

% Exemplo 4
A = [7 4 3 5 8; 0 4 8 5 2; 6 9 9 4 6; 0 9 9 7 0; 9 9 8 0 3];
b = [84; 62; 97; 73; 66];   


n = size(A,2);      % numero de variaveis do problema
x = zeros(n,1);     % solucao inicial (aproximada)

ee = 10^(-8);       % Precisao ou Tolerancia para o teste de parada
MAXITER = 1000;     % Numero maximo de iteracoes
conv = false;       % Variavel que informa se convergiu ou nao

% Realizar a iteracao de Gauss Seidel sobre o vetor x
% Para a iteracao "iter" de 1 at√© MAXITER:
for iter = 1:MAXITER
    for i = 1:n
        S = 0;
        for j = 1:n
            if j ~= i
                S = S + A(i,j)*x(j);
                x(i) = (b(i) - S)/A(i,i);
            end
        end
    end
    if norm(A*x-b, inf) < ee
        conv = true;
        break;
    end
end

if conv == true
    disp('O mÈtodo convergiu!');
    disp(iter);
    disp(x);
else
    disp('MÈtodo n„o convergiu!!!!');
end



































