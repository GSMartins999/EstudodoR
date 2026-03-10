produtos <- c("Arroz", "Feijão", "Macarrão")
preco <- c(15.50,8.20,5.00)
loja_vendas <- data.frame(produtos, preco)
loja_vendas


# Mudando o nome das colunas ----------------------------------------------

colnames(loja_vendas) <- c("Item", "Valor_Unitário")


# Trocando o valor do macarrão --------------------------------------------

produtos[,3] <- c(6,5)

loja_vendas


# Achando a média ---------------------------------------------------------


media <- (sum(loja_vendas$Valor_Unitário))/length(loja_vendas$Valor_Unitário)
media