library(tidyverse)
# carregando pacote
library(tidyverse)
getwd()
dados <- read.csv("C:\Users\Administrador\meu-projeto\Pratica R\Course.csv")
dados <- read.csv("C:/Users/Administrador/meu-projeto/Pratica R/Course.csv")
dados <- read.csv("C:\Users\Administrador\meu-projeto\Pratica R\Course.csv")
dados <- read.csv(file.choose(Course.csv))
dados <- read.csv("C:\Users\Administrador\meu-projeto\Pratica R\Teste.csv")
# Tente primeiro com um arquivo de teste
dados_teste <- read.csv("C:/Users/Administrador/meu-projeto/Pratica R/teste.csv")
print(dados_teste)
R.version.string
library(tidyverse)
glimpse(dados_hosp)
glimpse(dados)
library(dplyr)
glimpse(dados)
dados <- read.csv("C:\\Users\\Administrador\\meu-projeto\\Pratica R\Course.csv")
ls() 
library(dplyr)  
glimpse(dados)
print(dados) 
dados <- read.csv("C:\\Users\\Administrador\\meu-projeto\\Pratica R\\Course.csv")
print(dados)
Type 'q()'
dados <- read.csv("Course.csv")
dados <- read.csv("Course.csv", sep = ";")  
library(ggplot2)
str(dados) 
head(dados)  
library(ggplot2)

ggplot(dados, aes(x = Which.country..)) +
  geom_bar(fill = "steelblue") +
  theme_minimal() +
  labs(title = "Contagem de Países", x = "País", y = "Contagem") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
# Gráfico de barras para contagem de instituições
ggplot(dados, aes(x = Which.education.institution..)) +
  geom_bar(fill = "tomato") +
  theme_minimal() +
  labs(title = "Contagem de Instituições de Ensino", x = "Instituição", y = "Contagem") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
ggplot(dados, aes(x = coluna1, y = coluna2)) +  # Substitua 'coluna1' e 'coluna2' pelos nomes das suas colunas
  geom_point() +
  theme_minimal() +
  labs(title = "Gráfico de Dispersão", x = "Coluna 1", y = "Coluna 2")
ggplot(dados, aes(x = coluna1, y = coluna2, color = categoria_coluna)) +  # Use uma coluna para cores
  geom_point(size = 3, alpha = 0.7) +
  theme_minimal() +
  labs(title = "Gráfico de Dispersão Bonito", x = "Coluna 1", y = "Coluna 2") +
  scale_color_brewer(palette = "Set1")
library(ggplot2)

ggplot(dados, aes(x = Which.education.institution..)) +
  geom_bar(aes(fill = Which.country..), position = "dodge") +
  theme_minimal() +
  labs(title = "Contagem de Instituições por País", x = "Instituição", y = "Contagem") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  facet_wrap(~ Which.country.., scales = "free_y") +  # Facetas por país
  scale_fill_brewer(palette = "Set3")  # Usando uma paleta de cores
ggplot(dados, aes(x = Which.education.institution..)) +
  geom_bar(aes(fill = Which.country..), position = "dodge") +
  theme_minimal() +
  labs(title = "Contagem de Instituições por País", x = "Instituição", y = "Contagem") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  facet_wrap(~ Which.country.., scales = "free_y") + 
  scale_fill_brewer(palette = "Set1")  # Alterado para Set1
# Crie um subconjunto dos dados, se possível
sub_dados <- dados[1:100, ]  # Substitua 100 pelo número de linhas que você deseja usar

ggplot(sub_dados, aes(x = Which.education.institution..)) +
  geom_bar(aes(fill = Which.country..), position = "dodge") +
  theme_minimal() +
  labs(title = "Contagem de Instituições por País", x = "Instituição", y = "Contagem") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_brewer(palette = "Set1")
# Verifique a estrutura dos dados
str(dados)

# Veja as primeiras linhas para entender os dados
head(dados)

# Veja os valores únicos na coluna que está causando problemas
unique(dados$Which.education.institution..)
# Corrigir o caractere ? para '
dados$Which.education.institution.. <- gsub("s Institute of Technology", "’s Institute of Technology", dados$Which.education.institution..)

# Corrigir a sequência de escape inválida
dados$Which.education.institution.. <- gsub("San Jos\\x82 State University", "San Jose State University", dados$Which.education.institution..)

# Remover strings vazias
dados <- dados[dados$Which.education.institution.. != "", ]
unique(dados$Which.education.institution..)
# Corrigir caracteres problemáticos
dados$Which.education.institution.. <- gsub("Marathwada Mitramandal\\?s Institute of Technology", "Marathwada Mitramandal's Institute of Technology", dados$Which.education.institution..)
dados$Which.education.institution.. <- gsub("San Jos\\x82 State University", "San Jose State University", dados$Which.education.institution..)
dados$Which.education.institution.. <- gsub("\\x99rebro University", "Orebro University", dados$Which.education.institution..)
dados$Which.education.institution.. <- gsub("Medipol \\x81niversitesi", "Medipol University", dados$Which.education.institution..)

# Remover strings vazias
dados <- dados[dados$Which.education.institution.. != "", ]
unique(dados$Which.education.institution..)

dados$Which.education.institution.. <- gsub("Marathwada Mitramandal\\?s Institute of Technology", "Marathwada Mitramandal's Institute of Technology", dados$Which.education.institution..)
dados$Which.education.institution.. <- gsub("San Jos\\x82 State University", "San Jose State University", dados$Which.education.institution..)
dados$Which.education.institution.. <- gsub("\\x99rebro University", "Orebro University", dados$Which.education.institution..)
dados$Which.education.institution.. <- gsub("Medipol \\x81niversitesi", "Medipol University", dados$Which.education.institution..)

dados$Which.education.institution.. <- gsub("Marathwada Mitramandal\\?s Institute of Technology", "Marathwada Mitramandal's Institute of Technology", dados$Which.education.institution..)
dados$Which.education.institution.. <- gsub("San Jos[^[:print:]]*State University", "San Jose State University", dados$Which.education.institution..)
dados$Which.education.institution.. <- gsub("\\x99rebro University", "Orebro University", dados$Which.education.institution..)
dados$Which.education.institution.. <- gsub("Medipol[^[:print:]]*niversitesi", "Medipol University", dados$Which.education.institution..)


library(ggplot2)

ggplot(dados, aes(x = Which.education.institution..)) +
  geom_bar(aes(fill = Which.country..), position = "dodge") +
  theme_minimal() +
  labs(title = "Contagem de Instituições por País", x = "Instituição", y = "Contagem") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_brewer(palette = "Set1")

# Função para limpar strings problemáticas
clean_string <- function(x) {
  x <- gsub("Marathwada Mitramandal\\?s Institute of Technology", "Marathwada Mitramandal's Institute of Technology", x)
  x <- gsub("San Jos<[^>]*> State University", "San Jose State University", x)
  x <- gsub("\\x99rebro University", "Orebro University", x)
  x <- gsub("Medipol <[^>]*>niversitesi", "Medipol University", x)
  x <- iconv(x, from = "UTF-8", to = "UTF-8", sub = "byte")
  return(x)
}

# Aplicar a função a coluna
dados$Which.education.institution.. <- clean_string(dados$Which.education.institution..)

# Remover strings vazias
dados <- dados[dados$Which.education.institution.. != "", ]

# Verifique novamente os valores únicos
unique(dados$Which.education.institution..)
# Remover duplicatas
dados <- dados[!duplicated(dados$Which.education.institution..), ]

# Verificar se existem NAs
dados <- dados[complete.cases(dados), ]
library(ggplot2)

# Converter para fator
dados$Which.education.institution.. <- factor(dados$Which.education.institution..)

# Criar o gráfico
ggplot(dados, aes(x = Which.education.institution..)) +
  geom_bar(aes(fill = Which.country..), position = "dodge") +
  theme_minimal() +
  labs(title = "Contagem de Instituições por País", x = "Instituição", y = "Contagem") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_brewer(palette = "Set1")
# Alterar a paleta para Set3
scale_fill_brewer(palette = "Set3")
library(ggplot2)

# Converter para fator
dados$Which.education.institution.. <- factor(dados$Which.education.institution..)

# Criar o gráfico
ggplot(dados, aes(x = Which.education.institution..)) +
  geom_bar(aes(fill = Which.country..), position = "dodge") +
  theme_minimal() +
  labs(title = "Contagem de Instituições por País", x = "Instituição", y = "Contagem") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_brewer(palette = "Set3")
# Verificar entradas problemáticas
problemas <- dados[!complete.cases(dados), ]
print(problemas)
ggplot(aes(x = weight, y = height))+
  geom_point(color = "blue", alpha = 0.5)+
  geom_point(aes(y = largura), color = "red", alpha = 0.5)+
  theme_bw()+
  theme(
    axis.title = element_text(size = 18, face = "bold"),
    axis.text = element_text(size = 16, face = "plain")
  )
  library(ggplot2)
  library(dplyr)
  library(RColorBrewer)
  
  # Limpar os dados novamente para evitar problemas com strings
  dados$Which.education.institution.. <- clean_string(dados$Which.education.institution..)
  dados <- dados[dados$Which.education.institution.. != "", ]
  dados <- dados[!duplicated(dados$Which.education.institution..), ]
  dados <- dados[complete.cases(dados), ]
  
  # Converter para fator
  dados$Which.education.institution.. <- factor(dados$Which.education.institution..)
  
  # Criar o gráfico
  grafico <- ggplot(dados, aes(x = Which.education.institution..)) +
    geom_bar(aes(fill = Which.country..), position = "dodge") +
    theme_minimal(base_size = 15) +  # Aumenta o tamanho da fonte
    labs(title = "Contagem de Instituições de Ensino por País",
         x = "Instituição de Ensino",
         y = "Contagem",
         fill = "País") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1, vjust = 1),  # Melhora a leitura
          legend.position = "bottom",  # Coloca a legenda na parte inferior
          panel.grid.major = element_line(size = 0.5, linetype = 'dashed', color = "gray"),  # Linhas de grade
          panel.grid.minor = element_blank()) +  # Remove a grade menor
    scale_fill_brewer(palette = "Set3")
  
  # Exibir o gráfico
  print(grafico)
  # Remover entradas vazias e duplicatas
dados <- dados %>%
  filter(Which.education.institution.. != "", !duplicated(Which.education.institution..)) %>%
  drop_na()

# Converter a coluna de instituições para fator
dados$Which.education.institution.. <- factor(dados$Which.education.institution..)

# Verifique a estrutura dos dados
str(dados)
library(dplyr)

# Filtrando dados para remover entradas vazias
dados_limpos <- dados %>%
  filter(Which.education.institution.. != "", !duplicated(Which.education.institution..)) %>%
  drop_na(Which.country..)

# Verificando a estrutura dos dados
str(dados_limpos)
# Carregar os dados
dados <- read.csv("Course.csv")

# Verificando a estrutura dos dados
str(dados)
library(dplyr)

# Filtrando dados para remover entradas vazias e duplicadas
dados_limpos <- dados %>%
  filter(Which.education.institution.. != "") %>%
  drop_na(Which.country..)

# Verificando a estrutura dos dados limpos
str(dados_limpos)
library(ggplot2)
library(RColorBrewer)

# Criando o gráfico
grafico <- ggplot(dados_limpos, aes(x = reorder(Which.education.institution.., desc(Which.education.institution..)), fill = Which.country..)) +
  geom_bar(position = "dodge") +
  theme_minimal(base_size = 15) +
  labs(title = "Distribuição de Cursos por Instituição de Ensino e País",
       x = "Instituição de Ensino",
       y = "Número de Cursos",
       fill = "País") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        legend.position = "bottom") +
  scale_fill_brewer(palette = "Set3")

# Exibir o gráfico
print(grafico)
# Carregar bibliotecas
library(dplyr)
library(ggplot2)
library(RColorBrewer)
# Ler os dados
dados <- read.csv("C:/Users/Administrador/meu-projeto/Pratica R/Course.csv")

# Verificar a estrutura dos dados
str(dados)

# Criar o gráfico
grafico <- ggplot(dados_limpos, aes(x = reorder(Which.education.institution.., desc(Which.education.institution..)), fill = Which.country..)) +
  geom_bar(position = "dodge") +
  theme_minimal(base_size = 15) +
  labs(title = "Distribuição de Cursos por Instituição de Ensino e País",
       x = "Instituição de Ensino",
       y = "Número de Cursos",
       fill = "País") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        legend.position = "bottom") +
  scale_fill_brewer(palette = "Set3")

# Exibir o gráfico
print(grafico)
# Criar o gráfico
grafico <- ggplot(dados_limpos, aes(x = reorder(Which.education.institution.., desc(Which.education.institution..)), fill = Which.country..)) +
  geom_bar(position = "dodge") +
  theme_minimal(base_size = 15) +
  labs(title = "Distribuição de Cursos por Instituição de Ensino e País",
       x = "Instituição de Ensino",
       y = "Número de Cursos",
       fill = "País") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        legend.position = "bottom") +
  scale_fill_brewer(palette = "Set3")

# Exibir o gráfico
print(grafico)
# Criar o gráfico
grafico_paises <- ggplot(contagem_paises, aes(x = reorder(Which.country.., count), y = count, fill = Which.country..)) +
  geom_bar(stat = "identity") +
  theme_minimal(base_size = 15) +
  labs(title = "Distribuição de Cursos por País",
       x = "País",
       y = "Número de Cursos",
       fill = "País") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        legend.position = "none") +
  scale_fill_brewer(palette = "Set3")

# Exibir o gráfico
print(grafico_paises)


# Salvar o gráfico como PDF
ggsave("grafico_paises.pdf", plot = grafico_paises, width = 10, height = 6)
getwd()
# Defina o diretório de trabalho
setwd("C:/Users/Administrador/meu-projeto/Pratica R")

# Salvar o gráfico como PNG
ggsave("grafico_paises.png", plot = grafico_paises, width = 10, height = 6, dpi = 300)

# Salvar o gráfico como PDF
ggsave("grafico_paises.pdf", plot = grafico_paises, width = 10, height = 6)
library(ggplot2)
library(dplyr)
# Exemplo de contagem de países
dados_contagem <- dados %>%
  count(Which.country..) 

# Crie o gráfico
grafico_paises <- ggplot(dados_contagem, aes(x = reorder(Which.country.., n), y = n, fill = Which.country..)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Número de Cursos por País", x = "País", y = "Número de Cursos") +
  theme_minimal()

# Exiba o gráfico
print(grafico_paises)
grafico_elaborado <- ggplot(dados, aes(x = Date, y = Close)) +
  geom_line(color = "#0072B2", linewidth = 1.2) +  # Linha azul com espessura
  geom_point(color = "#D55E00", size = 1.5) +  # Pontos vermelhos
  geom_smooth(method = "loess", color = "#009E73", se = FALSE, linewidth = 0.8) +  # Linha de tendência
  scale_y_continuous(labels = dollar_format()) +  # Formato de moeda para o eixo Y
  labs(title = "Evolução do Preço de Fechamento do Bitcoin",
       subtitle = "Análise do preço de fechamento do Bitcoin entre 2017 e 2023",
       x = "Data",
       y = "Preço de Fechamento (USD)",
       caption = "Fonte: Dados de mercado de Bitcoin") +
  theme_minimal() +  # Tema minimalista
  theme(plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),  # Título centralizado
        plot.subtitle = element_text(hjust = 0.5, size = 12),  # Subtítulo centralizado
        plot.caption = element_text(size = 10),  # Texto da legenda menor
        axis.text.x = element_text(angle = 45, hjust = 1)) +  # Rotação dos rótulos do eixo X
  annotate("text", x = as.Date("2021-01-01"), y = 60000, label = "Pico em 2021", color = "red", size = 4)  # Anotação no gráfico
print(grafico_elaborado)
library(tidyverse)
# Carregar o conjunto de dados
dados <- read.csv("C:\Users\sabrina.marcandali\Desktop\POPULAÇÃO 2022.csv")
