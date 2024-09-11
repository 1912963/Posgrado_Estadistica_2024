# Ejercicions datos de madera MET

# Importar datos 
url <- "https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv"
madera <- read.csv(url, header = T)

 # H0 La varianza del peso de la especie gavia es mayor que la especie barreta
 # H1 La varianza del peso observado e la barreta
   
  
# Realizar una inspección gráfica

summary(madera)
ins <- subset(madera, madera$Inspección >=mean(madera$Inspección))
mean(madera$Peso)


hist(madera$Peso)

boxplot(madera$Peso_g ~ madera$Especie,
        xlab = "Especie",
        ylab = "Peso",
        col= "red")

# Estadistica descriptiva de la variable peso_g
tapply(madera$Peso_g, madera$Especie, mean)
tapply(madera$Peso_g, madera$Especie, var)


shapiro.test(madera$Peso_g)
bartlett.test(madera$Peso_g ~ madera$Especie)
madera$Peso_t<- log(madera$Peso_g + 1)
tapply(madera$Peso_t, madera$Especie, var)
boxplot(madera$Peso_t ~ madera$Especie)

t.test(madera$Peso_g ~ madera$Especie, var.equal = F)



