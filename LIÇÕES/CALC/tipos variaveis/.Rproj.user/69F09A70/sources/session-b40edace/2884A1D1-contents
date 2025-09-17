data("iris")

iris$ID <- seq(1:nrow(iris)) ## quantitaiva discreta 
## criando variavel qualiatativa ordinal 

iris$Petal.LengthLevel <- factor(
  
  cut(iris$Petal.Length, breaks = c(0,2,5,7)),
  labels = c("Pequeno","Médio","Grande"),
  ordered = TRUE
  
  
)
barplot( table(iris$Petal.LengthLevel))










