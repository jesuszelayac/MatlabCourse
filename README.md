# MatlabCourse
This is a repository with some codes as part of the course Programming 1 in San Marcos University

### Algoritmo Sor
Sirve para resolver la ecuación $A x=b$ dado los parámetros $w$, la aproximación inicial $x 0$.

**Entrada:** La matriz $A$, el vector $b, x 0, w, T o l$, el número máximo de iteraciones $N$.

**Salida:** La solución aproximada $x_1, \ldots, x_n$ o un mensaje de que el número de iteraciones fue excedida.

_Paso 1_

 Hacer (n,m) = dimensión A.

  Hacer Para $i=1,\ldots,n$ Tomar $x_i=x0_i$

  Tome $k=1$

_Paso 2_ Mientras $k \leq N$ Hacer los Pasos 3-6

_Paso 3_ Para $i=1, \ldots, n$
Tomar 

$$x_i = (1 - w) x_{0_i} + w \frac{\left(-\sum_{j=1}^{i-1} A_{ij} x_j - \sum_{j=i+1}^n A_{ij} x_{0_j} + b_i\right)}{A_{ii}}$$

_Paso 4_

Si $|x-x_0|_{\infty}<\text{Tol}$ entonces salida $\left(x_1, \cdots, x_n\right)$

(Procedimiento Terminado Satisfactoriamente)

PARAR

Sino

_Paso 5_ Tome $k=k+1$

_Paso 6_ 
  Para $i=1, \ldots, n$

Tomar $x 0_i=x_i$

_Paso 7_ SALIDA

('Número máximo de iteraciones excedido')
(Procedimiento Terminado sin éxito)
