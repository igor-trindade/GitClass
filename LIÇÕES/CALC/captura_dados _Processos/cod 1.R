
df_grupo <- rbind(captura.carlos,
                  captura.giuliana,
                  captura.joana,
                  captura.marina,
                  captura.rafael)



rm(captura.carlos,
   captura.giuliana,
   captura.joana,
   captura.marina,
   captura.rafael)


## primeiros passos
## mostra oque ta vindo no arquivo os primeiros dados 
head(df_grupo)

str(df_grupo)

dim(df_grupo)


## lembrando o que sao os dados (comentar)

summary(df_grupo)


# ]manipuando Um df
# df{Linh,Coluna}

## acessando linha e colunas 
df_grupo[1,]
df_grupo[,1]


df_grupo[,c("ram","cpu")]

## mostra X valor > 50 e torna um boolean
df_grupo$alerta <- df_grupo$ram > 50

# media carlos 
mean(df_grupo$ram)


## Media de ram onde usuario é carlos 
mean(df_grupo$ram[df_grupo$user == "carlos"])


##
aggregate( # x valor por X 
          cpu ~user, 
          # dados é donde? 
          data = df_grupo, 
          ## faça isu
          FUN = function(x) round(mean(x),2))
  

hist(df_grupo$ram,
     main = "Histograma de Uso de disco",
     xlab = "RAM(GiB)",
     ylab = "Frequência",
     col = "cyan",
     border = FALSE)


df_grupo [which.max(df_grupo$ram),]

df_grupo[which(df_grupo$cpu > 85),]

