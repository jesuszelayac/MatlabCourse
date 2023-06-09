%{PREGUNTA 1 DE LA SEMANA 10
Introduce la matriz A: [ 4 1 2; 2 4 -1; 1 1 -3]
Introduce el vecto columna b: [9 ; -5; -9]
Introduce los parametros w: 1.25
Introduce la tolerancia: 4*0.00001
Introduce la aproximacion inicial: [0 ; 0 ;0]
Introduce el numero maximo de iteraciones: 15
Algoritmo de sor%}
clc
clear all
A = input('Introduce la matriz A: ');
b = input('Introduce el vecto columna b: ');
w = input('Introduce los parametros w: ');
tol = input('Introduce la tolerancia: ');
x0 = input('Introduce la aproximacion inicial: ');
N=input('Introduce el numero maximo de iteraciones: ');
[n,m]=size(A);
x0 = zeros(n,1);
for i=1:n
    x(i) = x0(i);
end
k=1;
while k<=N
    for i=1:n
        s=0;
        for j=1:i-1
            s = s + A(i,j)*x(j);
        end
        z=0;
        for h=i+1:n
            z = z + A(i,h)*x0(h);
        end
        x (i) = (1-w)*x0(i) + w*(- s - z + b(i) / A(i,i) );
    end
    if  norm(x - x0 ,Inf)<tol
        for i=1:n
            fprintf(' x(%d) = %f ',i,x(i));
            disp('Procedimiento terminado satisfactoriamente');
        end
        return;
    else
        k=k+1;
        for i=1:n
            x0(i) = x(i);
        end
    end
end
disp('Numero maximo de iteraciones excedido');
disp('Procedimiento terminado sin exito');
