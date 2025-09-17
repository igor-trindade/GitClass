clientes <- data.frame(
  nome = c("Bob", "Tom", "Ana", "Mel", "Dan"),  # nominal discreta
  idade = c(20, 30, 22, 42, 37),                # numérica discreta
  salario = c(6543.5, 2145.5, 7821.1, 966.4, 3254.1),  # contínua
  plano = factor(
    c("Ouro", "Prata", "Ouro", "Ouro", "Bronze"), 
    levels = c("Bronze", "Prata", "Ouro"), 
    ordered = TRUE
  ),
  area = factor(
    c("Humanas", "Biologicas", "Exatas", "Biologicas", "Humanas"),
    levels = c("Humanas", "Biologicas", "Exatas"),
    ordered = FALSE
  )
)



hist(clientes$salario)
barplot(table(clientes$plano))
