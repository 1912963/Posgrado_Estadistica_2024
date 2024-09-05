data <- ("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
datos <- read.csv(data)
h.media <- subset(datos, datos$Altura >=mean(datos$Altura))


# Seleccion de todos los datos  -------------------------------------------

mean(datos$Altura)
h.16 <- subset(datos, datos$Altura <=16.5)


vecino.3 <- subset(datos, datos$Vecinos <=3)


vecino.4 <- subset(datos, datos$Vecinos > 4)


DBH.mean <- subset(datos, datos$Diametro < mean(datos$Diametro))
mean(datos$Diametro)
DBH.16 <- subset(datos, datos$Diametro > 16)
spp <- subset(datos, datos$Especie == "C")

cedrojo <- subset(datos, datos$Especie != "C")
DBH.16.9 <- subset(datos, datos$Diametro <= 16.9)
DBH.18.5 <- subset(datos, datos$Altura > 18.5)

# Visualización de datos  -------------------------------------------------

hist(datos$Altura, xlab = "Altura", ylab = "Frecuencia", main = "Histograma alturas",
     xlim = c(6,23), ylim = c(0,15), col = "pink")
hist(h.media$Altura, xlab = "Altura", ylab = "Frecuencia", main = "Histodrama de h.medias",
     xlim = c(13,23), ylim = c(0,12), col = "purple")
hist(h.16$Altura, xlab = "Altura", ylab = "Frecuencia", main = "Histograma de h.16",
     xlim = c(8,19), ylim = c(0,13), col = "orange")

hist(datos$Vecinos, xlab = "Altura", ylab = "Frecuencia", main = "Histograma de vecinos",
     xlim = c(0,7), ylim = c(0,13), col = "cyan")
hist(vecino.3$Altura, xlab = "Altura", ylab = "Frecuencia", main = "Histograma de datos de vecino.3",
     xlim = c(8,22), ylim = c(0,10), col = "green")
hist(vecino.4$Altura, xlab = "Altura", ylab = "Frecuencia", main = "Histograma de datos de vecino.4",
     xlim = c(8,20), ylim = c(0,4), col = "yellow")

hist(datos$Diametro, xlab = "Altura", ylab = "Frecuencia", main = "Histograma de diametros",
     xlim = c(5,26), ylim = c(0,14), col = "red")
hist(DBH.mean$Diametro, xlab = "Altura", ylab = "Frecuencia", main = "Histograma DBH.mean",
     xlim = c(6,17), ylim = c(0,8), col = "blue")
hist(DBH.18.5$Diametro, xlab = "Altura", ylab = "Frecuencia", main = "Histograma DBH.18.5",
     xlim = c(16,25), ylim = c(0,1), col = "salmon")


# Medias y desv.est -------------------------------------------------------

mean(datos$Altura)
sd(datos$Altura)
mean(h.media$Altura)
sd(h.media$Altura)
mean(datos$Vecinos)
sd(datos$Vecinos)
mean(vecino.3$Vecinos)
sd(vecino.3$Vecinos)
mean(vecino.4$Vecinos)
sd(vecino.4$Vecinos)
mean(datos$Diametro)
sd(datos$Diametro)
mean(DBH.mean$Diametro)
sd(DBH.mean$Diametro)
mean(DBH.16$Diametro)
sd(DBH.16$Diametro)

