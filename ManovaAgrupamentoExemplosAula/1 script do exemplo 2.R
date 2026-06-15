#  Exemplo 2: coracao (tres grupos)

# 1 - Carregando os dados  ------------------------------------------------
#Carregando os dados (coracao.xlsx)
dados <- coracao

#2 - Verificando a Normalidade das variaveis ----
#Teste de Normalidade (Shapiro-Wilk)
#H0: Possiu uma distribuição normal
shapiro.test(dados$Pressao) #normal
shapiro.test(dados$BC) #normal
shapiro.test(dados$Triglicerides) #normal
shapiro.test(dados$Glicemia) #normal

#3 - Testar a media da variavel Pressao entre os grupos ----
#Os grupos sao: Placebo, AH Novo, AH Padrao
#Tres grupos, portanto so deve ser usado a ANOVA
#H0: média são iguais
anova <- aov(dados$Pressao ~ dados$Grupo, data=dados)
summary(anova) #grupos sao iguais

#4. Testar se os grupos sao iguais para todas as variaveis
#MANOVA
## Construcao do modelo:
modelo <- manova(cbind(Pressao,BC,Triglicerides, Glicemia) ~ Grupo, data=dados)
#H0: média são iguais
summary(modelo, test="Roy")   #Teste Roy
summary(modelo, test="Wilks")  #Teste lambda de Wilks
summary(modelo)  #Teste Pillai

#Analisando individualmente os grupos
summary.aov(modelo)



