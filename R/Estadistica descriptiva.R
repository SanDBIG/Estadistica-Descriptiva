
# Estadistica descriptiva -------------------------------------------------

#usar base de datos de las pre cargadas en r

datasets::swiss   
#datasests:: da paso a abrir todas las bases existentes en rstudio

swiss #base de datos de suiza
View(swiss) #abre una ventana para ver el set de datos

# Estadisticos descriptivos -----------------------------------------------
#simples
min(swiss$Fertility) #valor minimo de la variable fertility
max(swiss$Fertility) #valor maximo de la varialbe fertility
range(swiss$Fertility) #rango de la variable fertility
mean(swiss$Fertility) #media/promedio de la variable fertility
median(swiss$Fertility) #mediana/valor medio de la variable fertility
length(swiss$Fertility) #numero observaciones de la variable
sum(swiss$Fertility) #total de todas las observaciones/casillas del set de datos
quantile(swiss$Fertility, 0.25) #cuantil 01, ojo si es con "," o "."
quantile(swiss$Fertility, 0.75) #cuantil 03, ojo si es con "," o "."
IQR(swiss$Fertility) #rango intercuartelario

#algo elevados
sd(swiss$Fertility) #desviación estandar de la variable fertility
var(swiss) #varianza usando r base
cor(swiss) #correlacion, usando r base






