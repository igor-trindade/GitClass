
dados <- ac1.cco.b
hist(dados$Nota,
     main = "Histograma - Nota Final",
     xlab = "Nota")

# Gráfico de barras da distribuição das notas finais
barplot(table(na.omit(dados$Nota)),
        main = "Distribuição das Notas Finais",
        xlab = "Nota",
        ylab = "Frequência",
        col = "lightblue")

# Médias: nota final + duas questões (exemplo Q1 e Q2)
medias <- c(
  Nota_Final = mean(dados$Nota, na.rm = TRUE),
  Q1 = mean(dados$Q1, na.rm = TRUE),
  Q2 = mean(dados$Q2, na.rm = TRUE)
)

barplot(medias,
        main = "Média: Nota Final vs Questões",
        col = "orange",
        ylab = "Média")

# Gráfico dispersão: Duração (em segundos) vs Nota
plot(dados$DuracaoSeconds, dados$Nota,
     main = "Nota Final x Duração (segundos)",
     xlab = "Duração (s)",
     ylab = "Nota Final"
     col = "blue")

# Múltiplos gráficos na mesma área (2x2)
par(mfrow = c(2, 2))
hist(dados$Nota,
     main = "Histograma - Nota",
     col = "lightgreen")
barplot(table(na.omit(dados$Nota)),
        main = "Distribuição Notas",
        col = "lightblue")
boxplot(dados$Nota, main = "Boxplot - Nota", col = "pink")
plot(dados$DuracaoSeconds, dados$Nota,
     main = "Dispersão Nota x Duração",
     col = "darkred")



media_nota <- mean(dados$Nota, na.rm = TRUE)
dp_nota <- sd(dados$Nota, na.rm = TRUE)
prob_nota_maior_8 <- 1 - pnorm(8, mean = media_nota, sd = dp_nota)
print(round(prob_nota_maior_8, 4))

p_q1_maior4 <- mean(dados$Q1 >= 4, na.rm = TRUE)
prob_binom_3de5 <- 1 - pbinom(2, size = 5, prob = p_q1_maior4)
print(round(prob_binom_3de5, 4))

qtd_notas_max <- sum(dados$Nota == 10, na.rm = TRUE)
lambda_pois <- mean(dados$Nota == 10, na.rm = TRUE) * nrow(dados)
prob_pois_15mais <- 1 - ppois(14, lambda = lambda_pois)
print(round(prob_pois_15mais, 4))

