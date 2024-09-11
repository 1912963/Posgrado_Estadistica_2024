# Clase ANOVA
sitios <- read.csv("Datos_Rascon_Anova.csv", header = T)
tapply(sitios$DAP, sitios$Paraje, mean)
tapply(sitios$EDAD, sitios$Paraje, mean)

boxplot(sitios$EDAD ~ sitios$Paraje)

tapply(sitios$EDAD, sitios$Paraje, mean)

shapiro.test(sitios$DAP)
bartlett.test(sitios$DAP ~ sitios$Paraje)

# Los datos de DAP no son normales, aunque sus varianzas si son homogeneas
# homogeneas

sitios$dap_t <- log(sitios$DAP+1)
shapiro.test(sitios$dap_t)
sitios$dap_t <- sqrt(sitios$DAP)

boxplot(sitios$dap_t ~ sitios$Paraje)
mean(sitios$dap_t^2)
mean(sitios$DAP)

# Analisis de varianza en 4 localidades diferentes 

sit.aov <- aov(sitios$dap_t ~ sitios$Paraje)
#prueba de analisis de varianza 
summary(sit.aov)

# prueba de tukey 

TukeyHSD(sit.aov)
plot(TukeyHSD(sit.aov))



     
