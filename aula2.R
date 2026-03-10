# Atividade 1 - Aula 2 ----------------------------------------------------

alunos <- c("Mariana", "Henrique", "João", "Carlos", "Fernanda")
genero <- c("F", "M", "M", "M", "F")
aprovado <- c(TRUE, FALSE, FALSE, TRUE, TRUE)

turma <- data.frame(alunos, genero, aprovado)
turma

notas <- c(8.8, 4.7, 5.0, 9.0, 9.8)

turma$notas <- notas
show(turma)

turma[2,] <- c("Marcelo", "M", TRUE, 6.5)
turma

turma$aprovado <-  NULL
turma


# Atividade 2 -------------------------------------------------------------


for (i in length(turma)) {
  turma$notas <- notas + 0.5
}

turma



# Atividade 3 -------------------------------------------------------------

if(!require(ggplot2))
install.packages("ggplot2")
library(ggplot2)


# Gráfico de barras na vertical -------------------------------------------

ggplot(turma, aes(x=turma$alunos, y=turma$nota)) + geom_col()

ggplot(turma, aes(x=turma$alunos, y=turma$nota)) + geom_col() + coord_flip()


# Atividade 4 -------------------------------------------------------------

dados <- iris[ ,1:2]
View(dados)
colnames(dados) <- 


