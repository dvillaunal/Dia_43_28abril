## ----eval=FALSE, include=FALSE------------------------------------------------
## "__Protocolo:__
## 
## + Nombre del Estudiante: Daniel Felipe Villa Rengifo
## 
## + Lenguaje Utilizado: R
## 
## + Tema: Ciclos en R (repetir, mientras y para)
## 
## + Fuentes Consultadas:
## 
##    * [How to write the first for loop in R](https://www.r-bloggers.com/2015/12/how-to-write-the-first-for-loop-in-r/)
##    * [A Tutorial on Loops in R - Usage and Alternatives](https://www.datacamp.com/community/tutorials/tutorial-on-loops-in-r)"


## -----------------------------------------------------------------------------
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


## -----------------------------------------------------------------------------
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


## -----------------------------------------------------------------------------
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


## -----------------------------------------------------------------------------
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


## -----------------------------------------------------------------------------
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


## -----------------------------------------------------------------------------
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


## -----------------------------------------------------------------------------
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


## -----------------------------------------------------------------------------
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


## -----------------------------------------------------------------------------
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

