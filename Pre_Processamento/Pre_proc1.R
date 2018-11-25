# Strings

# ***** Esta Ã© a versÃ£o 2.0 deste script, atualizado em 23/05/2017 *****
# ***** Esse script pode ser executado nas versÃµes 3.3.1, 3.3.2, 3.3.3 e 3.4.0 da linguagem R *****
# ***** Recomendamos a utilizaÃ§Ã£o da versÃ£o 3.4.0 da linguagem R *****

# Configurando o diretÃ³rio de trabalho
# Coloque entre aspas o diretÃ³rio de trabalho que vocÃª estÃ¡ usando no seu computador
setwd("~/Dropbox/DSA/BigDataAnalytics-R-Azure/Cap02")
getwd()

# String
texto <- "Isso Ã© uma string!"
texto

x = as.character(3.14) 
x
class(x) 


# Concatenando Strings



# Formatando a saÃ�da
sprintf("%s governa os EUA hÃ¡ %d anos", "Barack Obama", 8) 


# Extraindo parte da string
texto <- "Isso Ã© uma string!"
substr(texto, start=12, stop=17) 
?substr

# Contando o nÃºmero de caracteres
nchar(texto)


# Alterando a capitalizaÃ§Ã£o
tolower("Histogramas e Elementos de Dados")
toupper("Histogramas e Elementos de Dados")


# Usando stringr
library(stringr)


# Dividindo uma string em caracteres
strsplit("Histogramas e Elementos de Dados", NULL)
?strsplit


# Dividindo uma string em caracteres, apÃ³s o caracter espaÃ§o
strsplit("Histogramas e Elementos de Dados", " ")


# Trabalhando com strings
string1 <- c("Esta Ã© a primeira parte da minha string e serÃ¡ a primeira parte do meu vetor", 
             "Aqui a minha string continua, mas serÃ¡ transformada no segundo vetor")

string1

string2 <- c("Precisamos testar outras strings - @???!Â§$",
             "AnÃ¡lise de Dados em R")

string2

# Adicionando 2 strings
str_c(c(string1, string2), sep = "")


# Podemos contar quantas vezes um caracter aparece no texto
str_count(string2, "s")


# Localiza a primeira e Ãºltima posiÃ§Ã£o em que o caracter aparece na string
str_locate_all(string2, "s")


# Substitui a primeira ocorrÃªncia de um caracter
str_replace(string2, "\\s", "")


# Substitui todas as ocorrÃªncias de um caracter
str_replace_all(string2, "\\s", "")


# Detectando padrÃµes nas strings
string1 <- "23 mai 2000"
string2 <- "1 mai 2000"
padrao <- "mai 20"
grepl(pattern = padrao, x = string1)
padrao <- "mai20"
grepl(pattern = padrao, x = string1)


# Importando arquivo txt
# http://www.gutenberg.org/cache/epub/100/pg100.txt

arquivo <- read.csv("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte1/dframe.csv")

head(arquivo)
tail(arquivo)

str_count(arquivo, "7")
str_locate_all(arquivo, "7")


# Criando funÃ§Ãµes para manipular strings
strtail <- function(s,n=1) {
  if(n<0) 
    substring(s,1-n) 
  else 
    substring(s,nchar(s)-n+1) }

strtail