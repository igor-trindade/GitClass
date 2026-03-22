set.seed(1234)


media <- 35
desvio <- 15

idade <- abs(round(rnorm(500,media,desvio)))
idade

hist(idade)
## probavilidade de uma pessoa ter 20 anos ou menos numa x media num x desvio
prob <- pnorm(20,mean = media, sd = desvio)  

## lower.tail=false quando quer pegar dados para frente + de x valor 


## rnorm numeros random
## pnorm calculo de probabilidade
## rbinom random binominal
## pbinom probabilidade binominal 
## rpois 
## ppois 
## dnorm
m              
