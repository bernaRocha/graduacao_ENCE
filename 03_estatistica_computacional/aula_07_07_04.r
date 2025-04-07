# https://aulasence.ibge.gov.br/Bacharelado/Daniela%20Polessa%20Paula/Estat%C3%ADstica%20Computacional%20I/Computacional_2022/Aula%205R.pdf

########### Listas e Data Frames
## Equivalente a um "struct" na linguagem C

aluno <- list(nome = "Bernardo Monteiro Rocha", idade = 37, renda = 3100.25, publica = TRUE)
aluno # mostra todo o conteúdo da list

aluno[1]
#$nome
#[1] "Bernardo Monteiro Rocha"

###### melhor usar o nome da variável ao invés de um índice para acessar o valor
aluno$nome   
#[1] "Bernardo Monteiro Rocha"

#### adicionando uma variável a list   [1]
aluno$lingua_estrangeira <- "mandarim"

#### adicionando uma variável a list   [2]
aluno[[6]] <- "noturno"  # adiciona valor sem uma variável


domicilio <- list(total_pessoas = 2, animais = 3, banheiro = TRUE)
domicilio$animais
# [1] 3
domicilio$animais_tipo
# [1] "felino"

length(domicilio)
# [1] 4

for (x in aluno){ print(x)}
# [1] "Bernardo Monteiro Rocha"
# [1] 37
# [1] 3100.25
# [1] TRUE
# [1] "mandarim"
# [1] "noturno"
