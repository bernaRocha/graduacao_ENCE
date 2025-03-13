#### Aula do dia 12-03-25 ####

# ctrl + r para executar no R console
# ctrl + enter no R studio
4 + 4 - 3
100 ^ 2
1:100 # Sequência de 1 até 100

x = 1:100 # vetor
y = 201:300

plot(x,y)
boxplot(x)

# para carregar uma biblioteca, colocar o nome da bibloteca dentro do ()
library(ggplot2)

# gráfico
dados = data.frame(x=x, y=y)

ggplot(data=dados, aes(x=x, y=y)) + geom_line()
