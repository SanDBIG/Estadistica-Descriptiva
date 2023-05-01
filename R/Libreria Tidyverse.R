# Tidyverse ---------------------------------------------------------------
# Tidyverse es un set de paquetes que trabajan de manera armoniosa ya que no tienen
# conflicto entre ellos, los paquetes que se cargan a raiz de tidyverse son:

# ggplot2 #para visualizar data
# dplyr, #para manioular data
# tidyr, #para ordenar data
# readr, #para importar data
# purrr, #para proramación funcional
# tibble, #para ordenar los data frames o reconstruirlos
# stringr, #para los strings/cadena de caracteres
# forcats, #para factores
# lubridate, #para fecha y horas

pacman::p_load(tidyverse)

# siempre al momento de inicializar un ambiente de r se deben
# cargar las librerias que se van a usar dentro del mismo.

# Ejercicio Simple --------------------------------------------------------
# 0. Plantear variables

edad = c(18, 19, NA, 18, 24, 17, 22, 15, 22, 25)
sexo = c(0, 1, 0, 0, 1, 0, 0, 1, 1, 0)
estudios = c(1, 2, 0, 1, 3, 2, 3, 1, 2, 3)

# 1. Recodificar como factor sexo y el nivel de estudios, asignar etiquetas

sexo = factor(sexo, 
              levels = c(0,1),
              labels = c("Hombre", 
                         "Mujer")) #variable dicotomica con etiquetas

estudios = factor(estudios, 
                  levels = c(0:3),
                  labels = c("Sin estudios", 
                             "Estudios Primarios",
                             "Estudios Secundarios",
                             "Estudios Superiores")) #se agregan los 4 niveles de estudios

# 2. Tablas unidimensionales de los datos
# Edad
table(edad)
prop.table(table(edad)) #aca se usa la primera tabla de edad creada


table(edad,
      useNA = "ifany")

# Construir tablas de frecuencias para las variables
# sexo y nivel de estudios

#Sexo
table(sexo)
prop.table(table(sexo))

table(sexo,
      useNA = "ifany")

# Nivel de estudios
table(estudios)
prop.table(table(estudios))

# 3. Tablas frecuencias cruzadas
table(estudios,
      sexo)

prop.table(table(estudios,
                 sexo))

#Tabla de frecuencia por fila "1"

prop.table(table(estudios, 
                 sexo),
           1)
#Tabla de frecuencia por columna "2"
prop.table(table(estudios,
                 sexo),
           2)
# 3.1 Metodo abreviado para todo lo anterior
# Recordar "the simple the better"

t <- table(estudios,
           sexo)
prop.table(t)
prop.table(t,
           1)
prop.table(t,
           2)

# 4. Tabla de frecuencias de una variable continua agrupada
# en intervalos
range(edad,
      na.rm = T) #na.rm = T es para que ignore valores perdidos

#para el ejenplo se usará la regla de sturges em los intervalos

nclass.Sturges(edad) #Numero de intervalos en variable edad

seq(15, 25,
    length = nclass.Sturges(edad)) #establecer limites de los intervalos

# construir los intervalos con funcion cut

intervalosEdad <-  cut(edad,
                     breaks = seq(15, 25,
                                  length = nclass.Sturges(edad)),
                     include.lowest = T) # intervalos de edad, uno para
                                         # cada edad observada

table(intervalosEdad)


# Cargar libreria agricolae que incluye la funcion table.freq(),
# facilita la construccion de tablas de frecuencias para variables
# agrupadas por la funcion hist() que es base de R

pacman::p_load(agricolae)

tbFreqEdad <-  table.freq(hist(edad,
                             plot = F))

tbFreqEdad
view(tbFreqEdad)

# 5. Estadisticos descriptivos

# Media y desviacion estandar para variable edad

mean(edad,
     na.rm = T) # se usa n.rm = T , ya que tiene un valor n.a
                # dicha variable

sd(edad,
   na.rm = T)

summary(edad) # funcion que presenta pequeño resumen descriptivo
summary(estudios)
summary(sexo)

# Si es un data frame la funcion realiza un resumen descriptivo
# de todas las variables

misDatos <- data.frame(edad,
                       estudios,
                       sexo)
summary(misDatos)

# 5.1 Otra forma de visualizar datos descriptivos

# Usar la funcion describe() de la libreria psych

pacman::p_load(psych)

describe(misDatos)

# 6. Calcular media y desviacion estandar de la variable edad
# por sexo

aggregate(edad,
          by = list(sexo),
          mean,
          na.rm = T)

# 6.2 Otra forma de visualizar lo anterior

psych::describe(edad)
psych::describeBy(edad,
                  sexo)

# 7. Representaciones gráficas

# Representar graficamente nivel de estudios en un
# diagrama de sectores/grafico de torta
pie(table(estudios))

# Sexo en un grafico de barras
barplot(table(sexo))

# Edad en un histograma
hist(edad)















