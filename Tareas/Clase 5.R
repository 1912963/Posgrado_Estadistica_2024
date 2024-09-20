
# Correlación de datos  ---------------------------------------------------

library(repmis)
edad <- source_data("https://www.dropbox.com/s/nxoijhgmutuho0s/datos_control_Rascon.csv?dl=1")

summary(edad)

plot(edad$DAP, edad$EDAD, psh = 19, col = "indianred",
     xlab = "Diámetro (cm)",
     ylab = "Edad",
     ylim = c(20,140),
     xlim = c(10,50))

cor.test(edad$DAP, edad$EDAD)
ed.lm <- lm(edad$EDAD ~ edad$DAP)
ed.lm
plot(edad$EDAD, edad$DAP)
