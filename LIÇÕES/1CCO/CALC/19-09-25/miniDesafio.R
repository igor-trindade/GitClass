media <- 26
desvio <- 6
jogadores <- rnorm(200,media,desvio)

pico <- 30
mediaPorHora <- 8

VisitaJgPorHr <- rpois(pico,mediaPorHora)

cuponsDistribuidos <- 500
probUso <- 0.45
UsoCupom <- rbinom(1,cuponsDistribuidos,probUso)
UsoCupom


idadeProb <- 20
idadeProbEmDesvio<- pnorm(idadeProb,media,desvio)

idadeProbEmDesvio

cuponsUsados <- 200
probUsarCupons <- pbinom(cuponsUsados, cuponsDistribuidos, probUso) 
probUsarCupons


jogadoresHrProb <- 25
menosJogadoresPorhr<- ppois(jogadoresHrProb,mediaPorHora)
menosJogadoresPorhr
