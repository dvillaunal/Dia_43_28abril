__Protocolo:__

+ Nombre del Estudiante: Daniel Felipe Villa Rengifo

+ Lenguaje Utilizado: R

+ Tema: Ciclos en R (repetir, mientras y para)

+ Fuentes Consultadas:
   
   * [How to write the first for loop in R](https://www.r-bloggers.com/2015/12/how-to-write-the-first-for-loop-in-r/)
   * [A Tutorial on Loops in R - Usage and Alternatives](https://www.datacamp.com/community/tutorials/tutorial-on-loops-in-r)
   
```{r eval=FALSE, include=FALSE}
"__Protocolo:__

+ Nombre del Estudiante: Daniel Felipe Villa Rengifo

+ Lenguaje Utilizado: R

+ Tema: Ciclos en R (repetir, mientras y para)

+ Fuentes Consultadas:
   
   * [How to write the first for loop in R](https://www.r-bloggers.com/2015/12/how-to-write-the-first-for-loop-in-r/)
   * [A Tutorial on Loops in R - Usage and Alternatives](https://www.datacamp.com/community/tutorials/tutorial-on-loops-in-r)"
```
   
# ¿Qué son los bucles? _Definición_:

Un bucle es una instrucción de programación que se repite hasta que se alcanza una condición específica.

El bucle ejecuta un bloque de código una y otra vez hasta que no se requiera ninguna otra acción.

Cada vez que se ejecuta el bloque de código dentro del bucle se llama una iteración. 

## Diferentes tipos de bucles

Dependiendo de su situación de programación específica, puede necesitar diferentes estructuras de bucle que ejecuten los bloques de código dentro del bucle en base a diferentes condiciones.

en R generalmente proporciona tres tipos diferentes de bucles: "for-loops", "while-loops" y "repeat-loops". El siguiente gráfico ilustra el flujo de trabajo de cada uno de los tres tipos de bucles:

![](https://statisticsglobe.com/wp-content/uploads/2020/09/for-while-repeat-loop-in-r-programming.png)

# Ciclo `for`:

La estructura `for` nos permite ejecutar un bucle (loop), realizando una operación para cada elemento de un conjunto de datos.

## Sintaxis:

Su estructura es la siguiente:

> for(elemento in objeto){
>
>    operacion_con_elemento
>
>}

Con lo anterior le decimos a R:

+ `PARA` cada elemento `EN` un objeto, haz la siguiente operación.


Al escribir un bucle `for` la parte que corresponde al elemento la podemos llamar como nosotros deseemos, pero la parte que corresponde al objeto debe ser el nombre de un objeto existente.


```{r}
# Definimos un vector pseudo-aleatorio:
message("\n# Definimos un vector pseudo-aleatorio:")

obj <- sample(10, size = 10, replace = TRUE)
cat(obj)

# Definimos nuestro Loop:
message("\n# Definimos nuestro Loop:")
message("\nfor (elemento in obj)")

# Ahora le diremos que imprima cada numero:
message("\n# Ahora le diremos que imprima cada numero:")

for (i in obj){
  # Ahora le diremos que imprima cada numero:
  cat(i, "\n")
}
```

Tradicionalmente se usa la letra `i` para denotar al elemento.


### Nota:

Notarás que al ejecutar el código anterior parece que no ha ocurrido nada. En realidad, sí se han realizado las operaciones, pero R no ha devuelto sus resultados.

Las operaciones en un for se realizan pero sus resultados nunca son devueltos automáticamente, es necesario pedirlos de manera explícita.

A diferencia de otros lenguajes de programación en los que pedimos los resultados de un bucle con `return()`, _en R este procedimiento sólo funciona con funciones._

+ Una solución para mostrar los resultados de un bucle for es usar la función   `print().`


## Ejemplos:

```{r}
# Definamos un vector de longitud 20 valores desde 1 al 60, pero pseudo-aletorios:
message("\n# Definamos un vector de longitud 20 valores desde 1 al 60, pero pseudo-aletorios:")

"Con la función round(valor o valores, numero de digitos a redondear), funciona con numerics"

pseudo <- round(runif(20, min = 1, max = 60), 0)

# Definamos un for, dentro de el un if, donde saquemos el cuadrado solamente de los numeros pares:
message("\n# Definamos un for, dentro de el un if, donde saquemos el caudrado solmente de los numeros pares:")
c = 0
for (i in pseudo){
  if (i %% 2 == 0){
    c = c + 1
    cat(i^2, "\n")
  }
}
cat("Conteo de N° pares", c)
```

Comprobamos que la operación ha sido realizada a cada elemento de nuestro objeto. Sin embargo, usar `print()` ó `cat()` sólo mostrará los resultados de las operaciones en la consola, no los asignará a un objeto.

Si deseamos asignar los resultados de un bucle for a un objeto, usamos índices.


```{r}
# Creamos un vector vacío, asignándole como NULL como valor.
message("\n# Creamos un vector vacío, asignándole como NULL como valor.")

"Vamos a guardar las notas de un estudiante, (es decir inicia sin notas y va agregando)"

notas <- NULL
print("\nnotas <- NULL")
message("\n  # Definimos 10  notas, para despues calcularle el promedio:")

for(x in 1:10){
  # Definimos 10  notas, para despues calcularle el promedio:
  notas[x] <- runif(1, min = 0, max = 5)
}


if(mean(notas) >= 3.0){
  cat("Aprobo la materia =>",
      mean(notas))
  cat("Las notas del estudiante x son", notas, "\nSu promedio es:")} else {cat("Reprobo la materia =>", mean(notas))}
```

# While

Este es un tipo de bucle que ocurre mientras una condición es verdadera (`TRUE`). La operación se realiza hasta que se se llega a cumplir un criterio previamente establecido.

## Sintaxis

> while(condición){
>
>       operaciones
>
>}


Con esto le decimos a R:

+ __MIENTRAS__ esta condición sea __VERDADERA__, haz estas operaciones.

La condición generalmente es expresada como el resultado de una o varias operaciones de comparación, pero también puede ser el resultado de una función.


## Ejemplos:

Vamos hacer correr el programa, hasta que los valores pseudo-aleatorios se parezcan, (se crece de dos en dos):

```{r}
message("\nVamos hacer correr el programa, hasta que los valores pseudo-aleatorios se parezcan, (crecemos de 2 en dos.):")

# Creamos dos valores pseudo-aletorios:
message("\n# Creamos dos valores pseudo-aletorios:")

v1 <- sample(10, size = 1, replace = TRUE)
v2 <- sample(10, size = 1, replace = TRUE)

cat("v1:", v1, "\t" ,"v2:", v2)

# ahora un while donde hagamos lo propuesto:

# 1
if (v1 == v2){
  print("Se ejecuto 1")
  cat("\nLos valores v1 y v2 son iguales")
}

# 2
if (v1 > v2){
  print("Se ejecuto 2")
  while (v1 > v2) {
    print("Todavia no.")
    v2 <- v2 +2
  }
}

# 3
if (v2 > v1){
  print("Se ejecuto 3")
  while (v2>v1) {
    print("Todavia no.")
    v1 <- v1 +2
  }
}
```
--------------------------------------------------------------------

### ¡NOTA!:

__¡Ten cuidado con crear bucles infinitos! Si ejecutas un__ `while` __con una condición que nunca será__ `FALSE`__, este nunca se detendrá.__

--------------------------------------------------------------------

Volviendo con el ejemplo:

Le diremos al programa, que si reprueba la nota (`mean(notas)`) vaya sumandoles una unidad hasta que el promedio sea mayor o igual a  3.

_Un uso común de while es que realice operaciones que queremos detener cuando se cumple una condición, pero desconocemos cuándo ocurrirá esta._ <- El siguiente ejemplo explica lo dicho en italicá:

```{r}
# Si re rebrueba correra:

# Creamos un vector donde se guardara los resultados:
notas_dop <- NULL

# Un while donde si el promedio es menor a 3, añadale de una unidad hasta que notas_dop su promedio sea mayor o igual a 3.0:
message("\n# Un while donde si el promedio es menor a 3, añadale de a una unidad hasta que notas_dop su promedio sea mayor o igual a 3.0:")

print("---------------------------------------------------")
while (mean(notas) <= 3.0) {
  notas_dop <- notas + 1
  if (mean(notas_dop) >= 3.0){
    break
  }
}

cat("\nEstas son las notas aproximadas pra aprobar el curso: ", notas_dop)
```


# Estructuras de control:

`break` y `next` son palabras reservadas en R, no podemos asignarles nuevos valores y realizan una operación específica cuando aparecen en nuestro código.

`break` nos permite interrumpir un bucle, mientras que `next` nos deja avanzar a la siguiente iteración del bucle, “saltándose” la actual. Ambas funcionan para `for` y `while`.

## Ejemplos de break:

```{r}
# Interrumpir un for con un break:
message("\n# Interrumpir un for con un break:")

for (x in 0:10) {
  if(x == 5){
    break
  }
  cat("Valores que pasaron ya que no cumplieron la condición: ",i)
}

message("\n")
message("Como vimos yo ya he utilizado break, solo es un ejemplo para ilustrar su funcionamiento")
```

## Ejemplo de next:

Por su parte, usamos `next` para “saltarnos” una iteración en un bucle. Cuando la condición se cumple, esa iteración es omitida.

```{r}
# Ejemplo de next:
message("\n# Ejemplo de next:")
message("\n Nos saltaremos el 5")

for (i in 1:10) {
  if (i == 5){
    next
  }
  print(i)
}
message("\n Todos menos el 5")
```

### Reciclando el ejemplo anterior:
```{r}
# Reciclando el ejemplo anterior:
message("\n# Reciclando el ejemplo anterior:")

message("\nVamos hacer correr el programa, hasta que los valores pseudo-aleatorios se parezcan, (crecemos de 2 en dos.):")

# Creamos dos valores pseudo-aletorios:
message("\n# Creamos dos valores pseudo-aletorios:")

v1 <- sample(50, size = 1, replace = TRUE)
v2 <- sample(50, size = 1, replace = TRUE)

cat("v1:", v1, "\t" ,"v2:", v2)

# ahora un while donde hagamos lo propuesto:

# 1
# Ahora omitiremos todos lo valores donde v1 == v2
if (v1 == v2){
  # Definimso que pase si esta condición se cumple.
  next
}
# ............
```

# repeat

Este es un bucle que se llevará a cabo el número de veces que especifiquemos, usando un `break` para detenerse. `repeat` asegura que las operaciones que contiene sean iteradas al menos en una ocasión.

_Los ciclos de repetición siguen una lógica similar a los ciclos while, ya que también se pueden usar cuando el usuario no sabe el número exacto de veces que se debe repetir el código R. Sin embargo, los bucles de repetición no son tan populares como los bucles while._

## Sintaxis:
La estructura de repeat es el siguiente:

    `repeat` {
      
      operaciones
      
      _un break para detenerse_
    }


-------------------------------------------------------------------------

### Nota:

1. Si no incluimos un `break`, el bucle se repetirá indefinidamente y sólo lo podremos detener pulsando    la tecla ESC, así que hay que tener cuidado al usar esta estructura de control.

2. Este tipo de bucle es quizás el menos utilizado de todos, pues en R existen alternativas para          obtener los mismos resultados de manera más sencilla y sin el riesgo de crear un bucle infinito. Sin    embargo, puede ser la mejor alternativa para problemas específicos.

-------------------------------------------------------------------------

```{r}
# Vector con un valor => 0:
message("\n# Vector con un valor => 0:")
x.re <- 0

# Ahora creamos nuestro metodo de control repeat:
message("\n# Ahora creamos nuestro metodo de control repeat")

repeat {
  x.re <- x.re + 1
  print(x.re)
  
  if (x.re >= 5){
    break
  }
}

"Dentro del bucle de repetición, especificamos un cuerpo que añade +1 a nuestro objeto de datos creado preliminarmente. Como último paso del bucle de repetición, especificamos una condición lógica que detiene el bucle de repetición una vez que nuestro objeto de datos es igual a 5."
```
Dentro del bucle de repetición, especificamos un cuerpo que añade +1 a nuestro objeto de datos creado preliminarmente. Como último paso del bucle de repetición, especificamos una condición lógica que detiene el bucle de repetición una vez que nuestro objeto de datos es igual a 5.

