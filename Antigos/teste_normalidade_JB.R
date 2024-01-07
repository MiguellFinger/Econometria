# Teste de Normalidade

#Exemplo 3.2 Despesas com alimentação na India explicado pelas Despesas Totais
#
# GUJARATI e PORTER (2011, p. 102)
# Dados da tabela 2.8
#
# Sugere-se a leitura sobre a  teoria do teste Jarque-Bera nas págunas 150  e
# 151 do GUJARATI e PORTER (2011).
#
# O teste Jarque-Bera tem como base o formato da distribuição em termos de
# assimetria e curtose.
#aFinge
# A desvantagem é que o teste Jarque-Bera é adequado para amostras grandes.

tab28 <- read.csv2(file = "tab28.csv", header = TRUE)
tab28

reg1 <- lm(FOODEXP ~ TOTALEXP, data = tab28)
sreg1 <- summary(reg1)
sreg1

tab28$res <- cbind(sreg1$residuals)
tab28

# Teste Jarque- Bera usando o pacote tseries

library(tseries)

testejb <- jarque.bera.test(sreg1$residuals)
testejb

# Teste Jarque-Bera usando o pacote normtest

library(normtest)

testejb2 <- jb.norm.test(sreg1$residuals)
testejb2

# Note que a hipótese nula do teste Jarque-Bera é Ho: os resíduos seguem uma
# distribuição normal

# Como o valor da probabilidade do teste Jarque-Bera para os resíduos deu 0,8792,
# a decisão é de não rejeitar a hipótese nula de que os resíduos seguem uma
# distribuição normal com 5% de significância.

