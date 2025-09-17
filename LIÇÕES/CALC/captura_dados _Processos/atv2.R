dados <- read.csv("dados.csv")
summary(dados)


mean(dados$RAM.Uso)

max(dados$Disco.Temperature)

min(dados$CPU.Temperatura)

plot(dados$RAM.Uso, type = "l")


hist(dados$CPU.Uso)

sd(dados$Disco.Porcentagem.de.Uso)

boxplot(dados$CPU.Temperatura)

table(dados$CPU.Uso > 50)

cor(dados$CPU.Uso, dados$CPU.Temperatura)
