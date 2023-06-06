# MatlabCourse
This is a repository with some codes as part of the course Programming 1 in San Marcos University


1. Dado el algoritmo de Sor, codificar en el lenguaje de programación Matlab Para resolver la ecuación $A x=b$ dado los parámetros $w$, la aproximación inicial $x 0$.
Entrada: La matriz $A$, el vector $b, x 0, w, T o l$, el número máximo de iteraciones $N$.
Salida: La solución aproximada $x_1, \ldots, x_n$ o un mensaje de que el número de iteraciones fue excedida.
Paso 1 Hacer $(\mathrm{n}, \mathrm{m})=\operatorname{dimensión~} A$
Hacer Para $i=1, \ldots, n$
Tomar $x_i=x 0_i$
Tome $k=1$
Paso 2 Mientras $k \leq N$ Hacer los Pasos 3-6
Paso 3 Para $i=1, \ldots, n$
Tomar $x_i=(1-w) x 0_i+w \frac{\left(-\sum_{j=1}^{i-1} A_{i j} x_j-\sum_{j=i+1}^n A_{i j} x 0_j+b_i\right)}{A_{i i}}$
Paso 4 Si $\|x-x 0\|_{\infty}<T o l \quad$ entonces
$\operatorname{SALIDA}\left(x_1, \cdots, x_n\right)$
(Procedimiento Terminado Satisfactoriamente)
PARAR
Sino
Paso 5 Tome $k=k+1$
Paso 6 Para $i=1, \ldots, n$
Tomar $x 0_i=x_i$
Paso 7 SALIDA ('Número máximo de iteraciones excedido')
(Procedimiento Terminado sin éxito)
