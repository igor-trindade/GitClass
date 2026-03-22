library(dplyr)
data(starwars)

## Variavel Qualitativa nominal pois não é ordenana 

barplot(table(starwars$sex))


## Variavel Qualitativa nominal pois é ordenada 

starwars$ScaleHeight <- factor(
  cut(starwars$height, breaks = c(0,160,180,220,300)),
      labels = c("Pequeno","Médio","Grande","Gigante"),
      ordered = TRUE
        
  
)

barplot(table(starwars$ScaleHeight))


## Variavel tipo quantitativa continual 

barplot(table(starwars$birth_year))

hist(table(starwars$mass))


## Variavel tipo quantitativa discreta  

starwars$ID <- seq(1:nrow(starwars))

barplot(starwars$ID)

## extra

starwars$LevelOldYears <- factor(
  cut(starwars$birth_year, c(0,100,200,350,500,750,900),
      labels = c("Ser Terrestre","Ser Galatico novo","Ser Galatico velho","Monge Galatico",
                 "Idoso Galatico","Ansião galatico"),
      ordered = TRUE
      )
)


barplot(table(starwars$LevelOldYears))

