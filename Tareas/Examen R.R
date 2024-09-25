

Adriana Concepción Garza Pérez


datos <- data.frame(diam_arboles, altura_arboles)

# 15 y 16  ----------------------------------------------------------------


set.seed(42)
n <- 30
altura <- rnorm(30, mean = 170, sd = 10)
peso <- 0.5 * altura + rnorm(30, mean = 0, sd = 5)


# 17 y 18  ----------------------------------------------------------------

set.seed(42)
n <- 30
altura <- rnorm(30, mean = 170, sd = 10)
peso <- 0.5 * altura + rnorm(30, mean = 0, sd = 5 )



# 19 y 20  ----------------------------------------------------------------


set.seed(25)
n <- 40
diam_arboles <- rnorm(40, mean = 20, sd = 5)
altura_arboles <- 1.5 * diam_arboles + rnorm(40, mean = 0, sd = 3)



# alfa y beta  ------------------------------------------------------------


ed.lm <- lm(datos$diam_arboles ~ datos$altura_arboles)
ed.lm


datos <- data.frame(diam_arboles, altura_arboles)

