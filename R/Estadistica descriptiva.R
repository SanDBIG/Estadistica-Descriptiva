
# Estadistica descriptiva -------------------------------------------------

#usar base de datos de las pre cargadas en r

datasets::swiss   
#datasests:: da paso a abrir todas las bases existentes en rstudio

swiss #base de datos de suiza
tibble::view(swiss) #abre una ventana para ver el set de datos

# Estadisticos descriptivos -----------------------------------------------
#simples
base::min(swiss$Fertility) #valor minimo de la variable fertility
base::max(swiss$Fertility) #valor maximo de la varialbe fertility
base::range(swiss$Fertility) #rango de la variable fertility
base::mean(swiss$Fertility) #media/promedio de la variable fertility
stats::median(swiss$Fertility) #mediana/valor medio de la variable fertility
base::length(swiss$Fertility) #numero observaciones de la variable
base::sum(swiss$Fertility) #total de todas las observaciones/casillas del set de datos
stats::quantile(swiss$Fertility, 0.25) #cuantil 01, ojo si es con "," o "."
stats::quantile(swiss$Fertility, 0.75) #cuantil 03, ojo si es con "," o "."
stats::IQR(swiss$Fertility) #rango intercuartelario

#algo elevados
stats::sd(swiss$Fertility) #desviación estandar de la variable fertility
stats::var(swiss) #varianza usando r base
stats::cor(swiss) #correlacion, usando r base

#mas completos
psych::describe()



