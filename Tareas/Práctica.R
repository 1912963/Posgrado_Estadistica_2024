library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")

variable dependiente(duración)
variable independiente(tiempo de espera)

summary(erupciones)

plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración (min)", pch = 19, col = "blue")


# Correlación -------------------------------------------------------------

cor.test(erupciones$waiting, erupciones$eruptions)



# Obtencion de alfa y beta  -----------------------------------------------


ed.lm <- lm(erupciones$eruptions ~ erupciones$waiting)
ed.lm


# Significativo?????? -----------------------------------------------------

summary(ed.lm)
plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración (min)", pch = 19, col = "blue")

abline(ed.lm)

