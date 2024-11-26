library(tidyverse)
library(ggplot2)
dados <- read.csv("Bitcoin.csv")
library(ggplot2)
str(dados) 
head(dados) 
# Instalar e carregar o ggplot2, caso ainda não tenha
install.packages("ggplot2")  # comente esta linha se já tiver instalado
library(ggplot2)


grafico <- ggplot(dados, aes(x = Date, y = Close)) +
  geom_line(color = "blue") +  # Linha azul para o preço de fechamento
  labs(title = "Preço de Fechamento do Bitcoin ao Longo do Tempo",
       x = "Data",
       y = "Preço de Fechamento (USD)") +
  theme_minimal()  
# Instalar e carregar as bibliotecas necessárias
install.packages(c("ggplot2", "scales", "ggthemes"))  # comente esta linha se já tiver instalado
library(ggplot2)
library(scales)
library(ggthemes)

 <- ggplot(dados, aes(x = Date, y = Close)) +
  geom_line(color = "#0072B2", size = 1.2) +  # Linha azul com espessura
  geom_point(color = "#D55E00", size = 1.5) +  # Pontos vermelhos
  geom_smooth(method = "loess", color = "#009E73", se = FALSE, size = 0.8) +  # Linha de tendência
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



# Certifique-se de que a coluna 'Date' está no formato Date
dados$Date <- as.Date(dados$Date)

# Criar o gráfico
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

# Mostrar o gráfico
prin
install.packages(c("ggplot2", "scales", "ggthemes"))  # comente esta linha se já tiver instalado
library(ggplot2)
library(scales)
dados$Date <- as.Date(dados$Date)





