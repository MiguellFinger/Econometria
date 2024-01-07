---
title: "Trabalho Final"
author: "Miguel Finger Schmidtke"
date: "28/04/2022"
output:
  pdf_document: default
  html_document: default
---
---
INTRODUÇÃO   

  Este trabalho se dedica a analisar a taxa de desemprego, causas correlacionadas e qual o tamanho do impacto de cada uma delas, seja no efeito de elevação da taxa de desemprego, ou o efeito de queda da taxa do desemprego.  
  Especificamente esta variável foi escolhida por ser uma preocupação recorrente do governo brasileiro, está presente nos discursos de todos os presidenciaveis, nas capas dos jornais e no dia a dia da população.  
  O Brasil teve um período relativamente tranquilo em relação ao desemprego na década de 2001 a 2010. Na década seguinte, passou a lidar com um aumento expressivo da taxa de desemprego.  
  Durante este período convivemos também com mudanças bruscas nas politicas fiscais e monetárias.
  Cabe destacar aqui a Nova Matriz Econômica, que teve seu inicio dado pela então presidente Dilma Rousseff, que tinha como um de seus principais pilares a expansão da base monetária, altos investimentos e pouca preocupação fiscal.
  O período que analisaremos neste trabalho está compreendido entre os anos 2012 e 2021, totalizando assim a análise de um período total de 10 anos.  
  A escolha desse período específico  se deve ao entendimento de que a nova matriz economica e suas principais implicações começariam a surtir efeito a partir do primeiro ano em vigor.  
  O entendimento sobre essa questão é que um período com grandes mudanças nas variáveis de interesse poderia auxiliar no desenvolvimento do trabalho, e evidenciar o impacto que mudanças bruscas nestas políticas podem acarretar.  
  Foi desenvolvida uma análise econométrica com uma regressão linear múltipla, explicando a variação na taxa de desemprego (Y) com as variáveis explanatórias Salário Mínimo (X1), Taxa Selic (X2) e Variação IPCA(x3).O trabalho está dividido em Introdução, uma breve revisão da literatura sobre os principais pontos dos modelos de regressão linear múltipla, metodologia, resultados discutidos e conclusão.  
  É importante para a compreensão do trabalho o entendimento sobre as variáveis de interesse. 
  
---
Revisão da Literatura  
Modelos de regressão linear múltipla são os modelos que  possuem duas ou mais variáveis explicativas para a variável dependente. São lineares nos parâmtreos. Precisam atender às seguintes condições                                                                   
**(1) Modelo é linear nos parâmetros;**  
**(2) Variáveis explicativas independem do termo de erro;**  
**(3) A média do termo de erro é 0;**  
**(4) Homocedasticidade;**  
**(5) Ausência de Autocorrelação entre os termos;**  
**(6) Número de observações maior que o de parâmetros;**  
**(7) Deve haver variação nos valores das variáveis “X”;**  
**(8) Não há colinearidade exata entre as variáveis “X”;**  
**(9) Ausência de viés de especificação.**   
   
   
   
Realizando a Regressão, teremos nos regressores estimados os efeitos da variável explicativa correspondente no valor de Y. Estes regressores estimados são obtidos com o método dos MínimosQuadrados Ordinários (MQO), com o qual procuramos obter a menor Soma dos Quadrados dos Resíduos(SQR) possível. Os resíduos da regressão podem ser uma medida útil de quão bem a linha de regressão estimada se ajusta aos dados. Uma boa equação de regressão é aquela que ajuda a explicar uma grande proporção da variância de Y. Um modelo que tem resíduos muito grandes, denuncia que a adequação é ruim, enquanto resíduo pequenos implicam uma boa adequação.                                                                                       
   
Desta forma utilizamos a medida R^2 que é a proporção da variação total de Y(várivavel dependente) explicada pela regressão de Y contra X. Esta medida R^2 tem seu valor entre 0 e 1, um R^2 igual a 0 ocorre quando o modelo de regressão linear não ajuda em nada a explicar a variação de Y.   
   
METODOLOGIA  
  
  
Os dados utilizados para essa abordagem foram retirados do WebSite IPEADATA e das séries históricas disponibilizadas pelo IBGE.                                                    
As referências buscadas para este estudo com o auxilio da ferramenta de dados do IPEA e do IBGE foram:                                                                                      

Taxa de Desemprego                                                                                                                                                                
O desemprego, de forma simplificada, se refere às pessoas com idade para trabalhar (acima de 14 anos) que não estão trabalhando, mas estão disponíveis e tentam encontrar trabalho. Assim, para alguém ser considerado desempregado, não basta não possuir um emprego.(Fonte: IBGE)                                                                             

Salário Mínimo                                                                                                                                       

Salário mínimo nominal vigente - não considera abonos salariais ocorridos nos períodos. O salário mínimo urbano foi instituído no Brasil por decreto-lei do presidente Getúlio Vargas, durante a ditadura do Estado Novo, e começou a vigorar em julho de 1940, com valores diferenciados entre estados e sub-regiões. Em 1943, foi incorporado à Consolidação das Leis do Trabalho (CLT) e, em 1963, foi estendido ao campo por meio do Estatuto do Trabalhador Rural. Foi nacionalmente unificado em maio de 1984, mas, desde 2000, a Lei Complementar 103 permite que os estados fixem pisos estaduais superiores ao mínimo nacional. Fonte:IPEADATA/DIEESE                                                            

Taxa SELIC                                                                                                                                                                                                                                                         
A Selic é um dos elementos centrais da estratégia de política monetária no Brasil, que está baseada em um sistema de metas de inflação. Criado em 1999, ele estabelece o compromisso do país em adotar medidas para manter a inflação dentro de uma faixa fixada periodicamente pelo Conselho Monetário Nacional (CMN), composto pelos ministros e o presidente do Banco Central. O objetivo é assegurar a estabilidade da economia e evitar descontroles de preço como os que o país já viveu em décadas passadas, que causam a perda do poder de compra da moeda.                                                       
Fonte: InfoMoney                                                                                                                                                                 

Índice IPCA e Taxa de Variação                                                                                                                                                                                                     
O Índice Nacional de Preços ao Consumidor Amplo (IPCA) mede a inflação de um conjunto de bens e serviços comercializados no varejo, referentes ao consumo pessoal das famílias, cujo rendimento varia entre 1 e 40 salários mínimos, visando uma cobertura de 90 % das famílias pertencentes as áreas urbanas de abrangência do Sistema Nacional de Índices de Preços ao Consumidor (SNIPC), qualquer que seja a fonte de rendimentos. É calculado a partir dos resultados dos índices regionais, utilizando-se a média aritmética ponderada e cuja a variável de ponderação é o Rendimento Familiar Monetário Disponível, tendo como fonte de informação a Pesquisa de Orçamentos Familiares - POF. Refere-se ao número índice (número de pontos ) das taxas de variações de preços do grupo de bens e serviços.                                                                                          
Fonte: /IBGE
                                                                                                                                                                                                                                                                         

Período e análise                                                                                                                                                                                                                                                            
O período analisado (2012 - 2021) compreende o total de 10 anos inteiros. A preparação das bases foi feita em CSV, todos os testes e a sequência do trabalho foi realizado em RMarkDown.                                                                                 
A variável dependente que estamos investigando neste caso foi a Taxa de Desemprego. Esta é uma variável de muita importância dado que a região que exploramos é o Brasil, e este país convive, em sua história recente, com uma taxa elevada de desemprego, e divide a opinião de economistas sobre suas causas.                                                         
As variáveis explicativas foram as já mencionadas acima Salário Mínimo, Taxa  Selic e a variação do IPCA.                                                                            
A análise aqui realizada tem  o objetivo de testar as hipóteses econômicas clássicas  de que a taxa de desemprego pode ser influenciada positivamente - o que neste caso significa mais desemprego - pelo aumento do salário minimo, aumento da taxa de juros (SELIC), ou diminuição da taxa de inflação - Neste caso consideramos a explicação de Philipps, de que uma diminuição da inflação impacta a economia com o aumento do desemprego.                                                                                       

TESTES E RESULTADOS                                                                                                                                                               

Iniciamos carregando a os pacotes, e na sequência a  base de dados
                                                                                      
                                                                                      
                                                                                      
                                                                            


```r
library(car)                                                                                   
```

```
## Loading required package: carData
```

```r
library(carData)                                                                         
library(dplyr)                                                                           
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following object is masked from 'package:car':
## 
##     recode
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
library(knitr)                                                                           
library(lmtest)                                                                          
```

```
## Loading required package: zoo
```

```
## 
## Attaching package: 'zoo'
```

```
## The following objects are masked from 'package:base':
## 
##     as.Date, as.Date.numeric
```

```r
library(pacman)                                                                          
library(psych)                                                                           
```

```
## 
## Attaching package: 'psych'
```

```
## The following object is masked from 'package:car':
## 
##     logit
```

```r
Base <- read.csv2('Pasta2.csv')
```
                                                                                                                                                                                Validamos a Base de dados                                                                           

```r
View (Base)                                                                                                                                                             
```
                                                                                                                                                                             
Utilizamos a função glimpse que permite visualizar os dados com os atributos como linhas e os objetos como colunas                                                                  
                                                                                                                                                                                
                                                                                                                                                                            

```r
glimpse (Base)                                                       
```

```
## Rows: 120
## Columns: 5
## $ Data     <chr> "jan/12", "fev/12", "mar/12", "abr/12", "mai/12", "jun/12", "~
## $ TX_DES   <dbl> 8.0, 7.8, 7.7, 7.6, 7.5, 7.4, 7.1, 7.0, 6.8, 6.9, 7.3, 7.8, 8~
## $ SL_MIN   <int> 622, 622, 622, 622, 622, 622, 622, 622, 622, 622, 622, 622, 6~
## $ TX_SLC   <dbl> 0.89, 0.75, 0.82, 0.71, 0.74, 0.64, 0.68, 0.69, 0.54, 0.61, 0~
## $ VAR_IPCA <dbl> 0.56, 0.45, 0.21, 0.64, 0.36, 0.08, 0.43, 0.41, 0.57, 0.59, 0~
```
                                                                                                                                                                                                                                             
As colunas ficaram definidas como:                                                                
                                                                                                  
                                                                                                  
TX_DES SL_MIN SLC VAR_IPCA                                                                                                                                                             

                                                                                                
                                                                                         
Sendo, respectivamente: Taxa de Desemprego, Salário Mínimo, Taxa Selic, Variação do IPCA.                                                                                                                                                                              
                                                                                                                                                                                                        
                                                                                                                                                                                                       
                                                                                                                                                                                               
                                                                                                                                   
Utilizando a função lm criei o modelo de regressão linear multipla chamado aqui de regl.                                                                                                

```r
regl <- lm(TX_DES ~ SL_MIN + TX_SLC + VAR_IPCA ,   data = Base)                                                                                                                                  
```
                                                                                                                                                                                 
Para verificar a relevância estatistica do modelo, cria-se um resumo das estatisticas
a partir do modelo já estabelecido.                                                                                                                                              

```r
sregl <- summary(regl)
sregl                                                                                                                             
```

```
## 
## Call:
## lm(formula = TX_DES ~ SL_MIN + TX_SLC + VAR_IPCA, data = Base)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -2.39124 -0.84262  0.07158  0.78037  2.32716 
## 
## Coefficients:
##               Estimate Std. Error t value Pr(>|t|)    
## (Intercept) -4.2729649  0.8689280  -4.918 2.91e-06 ***
## SL_MIN       0.0167797  0.0007729  21.709  < 2e-16 ***
## TX_SLC       1.0381300  0.3879419   2.676  0.00853 ** 
## VAR_IPCA    -0.8556017  0.2739171  -3.124  0.00226 ** 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 1.071 on 116 degrees of freedom
## Multiple R-squared:  0.8445,	Adjusted R-squared:  0.8405 
## F-statistic: 209.9 on 3 and 116 DF,  p-value: < 2.2e-16
```
                                                                                                   
                                                                                                   
                                                                                              
Vamos iniciar observando o teste F, tendo valor P < 0,05 indica que nosso modelo de regressão é estatisticamente significativo para explicar a variação e fazer previsões.

Podemos observar também que o nosso R^2 nos mostra que as variáveis explicativas explicam em até 84,45% a variação da variável dependente.

O maior problema na interpretação do R^2 como medida de ajustamento da regressão, se dá pelo fato de que cada variável que implementamos a mais no modelo, necessariamente aumentará seu valor. Desta forma se mostra muito importante a interpretação do R^2 ajustado.

O R^2 ajustado leva em consideração o aumento da quantidade de estimadores, e pode aumentar o diminuir com estes. Nosso R^2 prova a consistência do modelo pois se mantém com valor acima de 50%, que é um valor de refêrencia para estudos econômicos.

Tendo validado a significância do modelo em geral, podemos começar a olhar as variáveis separadamente, para verificar o que cada uma delas pode nos dizer sobre a variação da nossa variável dependente, que neste caso é a taxa de desemprego.

Vamos iniciar olhando o teste t, vale lembrar que aqui temos como hipótese nula que o coeficiente é =0 ou seja, não estatisticamente significativo, e hipótese alternativa coeficiente diferente de 0, ou seja estatisticamente signitifativo. Desta forma todo valor P>0,05 iguala, estatisticamente, a 0. Todo valor P<0,05 mostra uma significância estatistica da variável na explicação da variável dependente.

Das três variáveis de escolha podemos notar que a que se provou mais estatisticamente significativa na explicação da variação da taxa de desemprego foi o salário mínimo.

A váriavel explicativa "TX_SLC" se provou estatisticamente significativa na explicação da variação da taxa de desemprego. 

A variável que mostra a variação do IPCA também é estatisticamente significativa para explicar a variação da taxa de desemprego.



Partindo agora para a explicação dos resultados das variáveis explicativas, vamos começar analisando o Salário mínimo e seu impacto na taxa de desemprego. O modelo estimou que para cada Real(R$) de aumento no salário mínimo, nós temos aproximadamente 0,017 de aumento na taxa de desemprego.

Este é um resultado muito interessante para nós, e joga luz sobre uma discussão presente atualmente no Brasil, que é a de que a manutenção do salário mínimo contribui para a manutenção do desemprego, neste caso, de forma positiva, mostrando que um aumento no salário minimo tem correlação com um aumento na taxa de desemprego.

Analisando o resultado da variável TX_SLC, que é a taxa Selic, encontramos uma relação positiva, que neste caso corrobora a tese difundida informalmente entre as pessoas de que um aumento na taxa de juros, diminui o consumo das familias e desta forma aumentaria o desemprego.
Podemos afirmar a correlação entre estas variáveis.

Analisando a última variável explicativa, que é a Variação do IPCA, encontramos uma relação negativa, que é exatamente o ponto levantado por Philips e depois complementado por hayek. A inflação afetar a taxa de desemprego de forma negativa significa que cada aumento da inflação diminui a taxa de desemprego, e consequentemente, cada diminuição da taxa de inflação acarreta um aumento da taxa de desemprego. 
Aqui encontramos essa implicação com a seguinte proporção: para cada diminuição de 1% no índice de inflação, temos o aumento de 0,85% na taxa de desemprego.



Agora que já entendemos o modelo econométrico, vou realizar as análises estatisticas tanto do modelo quanto da base de dados, para conferir se não há nenhum problema com o nosso estudo.

Fazemos o plot com a função:                                                             

```r
plot(regl)
```

![](Trabalho-Final-Econometria_files/figure-latex/unnamed-chunk-6-1.pdf)<!-- --> ![](Trabalho-Final-Econometria_files/figure-latex/unnamed-chunk-6-2.pdf)<!-- --> ![](Trabalho-Final-Econometria_files/figure-latex/unnamed-chunk-6-3.pdf)<!-- --> ![](Trabalho-Final-Econometria_files/figure-latex/unnamed-chunk-6-4.pdf)<!-- --> 
Iniciamos Analisando o primeiro gráfico de nome "Residuals vs Fitted"
Este gráfico nos mostra os resíduos x valores ajustados, e nos ajuda a entender a linearidade da nossa regressão. Quanto mais a linha vermelha estiver próxima da linha pontilhada mais linear é nosso modelo. Neste caso a linha está satisfatoriamente horizontal.

No segundo gráfico de nome "Normal Q-Q"
Tem no eixo Y os resíduos padronizados e no eixo X os residuos teóricos para uma distribuição normal. A qualidade do ajustamento dos resíduos a linha pontilhada nos mostra a normalidade da distribuição.

Terceiro gráfico de nome "Scale-Location"
Teste de homocedasticidade, neste teste precisamos observar um padrão retangular da distribuição dos resíduos, o que é confirmado pelo gráfico gerado a partir do modelo.

Quarto gráfico de nome "Residual vs Leverage"
Nos ajuda com a verificação de Outliers. É esperado que a escala Y esteja dentro do padrão -3 < y < +3, o que podemos confirmar neste gráfico.
Caso existissem outliers veríamos uma linha vermelha, abaixo ou acima dos demais residuos, e o outlier posicionado após esta linha.

A análise gráfica é extremamente produtiva e nos ajuda com a verificação dos pressupostos do modelo, mas tem a fragilidade de deixar a análise muito subjetiva de acordo com o pesquisador.
                                                                                               
                                                                                               
Deste modo começarei a introduzir alguns testes que podem nos ajudar a confirmar os pressupostos verificados nos graficos anteriores.

Para verificar a normalidade vamos utilizar a função                                      

Que caso retorno um valor p>0,05 confirma a distribuição normal
                                                                                           
                                                                                           


```r
shapiro.test(regl$residuals)
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  regl$residuals
## W = 0.98297, p-value = 0.1343
```

Como podemos verificar 0,1343 > 0,05 confirmando a normalidade da distribuição
                                                                                                 
                                                                                                                                                                                 
Para verificar a presença de outliers utilizaremos a função                                             
                                                                                                      
Esperamos que os valores mínimo e máximo estejam dentro do padrão -3 < x < +3.                                                                                                         
                                                                                        

```r
summary(rstandard(regl))                                                                          
```

```
##      Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
## -2.288463 -0.801135  0.067675  0.001322  0.743091  2.264854
```

                                                                                              
                                                                                              

Como podemos verificar, o teste confirma que não há outliers que precisem ser retirados do modelo.                                           
                                                                                                 
                                                                                                 

Para verificação da multicolinearidade da nossa base de dados  vamos utilizar um painel, com a função:                                                                                
                                                                                                              
                                                                                                              

```r
pairs.panels(Base)
```

![](Trabalho-Final-Econometria_files/figure-latex/unnamed-chunk-9-1.pdf)<!-- --> 
                                                                                                   
                                                                                                   
O único número que aparece neste painel que está acima de 0,8, o que poderia indicar um problema, está relacionando a variável dependente à variável explicativa, e nós só temos interesse em analisar a multicolineariedade entre os valores estimados.

Desta forma entendemos atráves deste painel que não há problema de multicolinearidade.
                                                                                             
                                                                                             
Podemos utilizar outro método de verificação para que possamos afirmar com mais segurança que não temos um problema de multicolinearidade.                                           
                                                                                                    
                                                                                                    
Utilizamos aqui a função
                                                                                           
                                                                                           

```r
vif(regl)
```

```
##   SL_MIN   TX_SLC VAR_IPCA 
## 1.485176 1.481894 1.002874
```
Esta função permite identificar o problema diretamente no modelo, diferentemente do painel apresentado acima.

                                                                                                
                                                                                                                                                                              

Para implicar em um problema de multicolinearidade o valor da variavel deve estar acima de 10, e como podemos verificar no teste acima, nenhuma de nossas variáveis apresenta este valor.
                                                                                                 
                                                                                                                                                                                     
                                                                                                                                                                                 
Decidi realizar também  o intervalo de confiança para assegurar a significância estatistica das variaveis
                                                                                             
                                                                                             
utilizamos então a função                                                                      

```r
confint(regl)
```

```
##                   2.5 %      97.5 %
## (Intercept) -5.99398621 -2.55194361
## SL_MIN       0.01524881  0.01831056
## TX_SLC       0.26976225  1.80649775
## VAR_IPCA    -1.39812901 -0.31307442
```

Este resultado provará a falta de significância estatistica caso o intervalo apresentado passe por 0.                                                                               
Podemos observar que todos os intervalos estão inteiramente acima ou abaixo de 0, nenhum deles compreende exatamente o número 0, e desta forma temos segurança para reafirmar a significância estatistica do modelo.
                                                                                              
                                                                                              
Para verifiar presença de correlação serial
                                                                                            
                                                                                                                                                                                                                                   
                                                                                        
                                                                                           
                                                                                                   
vamos utilizar o teste Durbin-Watson


```r
dwtest(regl)
```

```
## 
## 	Durbin-Watson test
## 
## data:  regl
## DW = 0.17183, p-value < 2.2e-16
## alternative hypothesis: true autocorrelation is greater than 0
```
                                                                       
                                                                                                                                                                                 
                                                                                                                       
A baixa estatistica Durbin-Watson(DW=0,1718) é um forte indicio da presença de correlação serial de primeira ordem.

                                                                                                     
                                                                                                                                                                                         
Por fim, vamos comparar os dados reais com o resultado do modelo, ou seja, comparar os dados históricos da taxa de desemprego com os dados de taxa de desemprego entregues pelo modelo quando inseridos Salário Minimo, Taxa Selic, e Variação de IPCA.
                                                                                                     
                                                                                                

```r
EST_REG <- fitted.values(regl)                                                       
EST_REG
```

```
##         1         2         3         4         5         6         7         8 
##  6.608798  6.557576  6.835590  6.353486  6.624199  6.759954  6.502019  6.529512 
##         9        10        11        12        13        14        15        16 
##  6.236897  6.292454  6.221610  6.059045  6.990722  7.098984  7.272500  7.266340 
##        17        18        19        20        21        22        23        24 
##  7.409967  7.514465  7.825447  7.635390  7.541273  7.456854  7.389090  7.136631 
##        25        26        27        28        29        30        31        32 
##  8.287357  8.105285  7.887734  8.153541  8.385123  8.384553  8.853195  8.564800 
##        33        34        35        36        37        38        39        40 
##  8.332532  8.502398  8.311199  8.204763  8.864323  8.756860  8.899688  9.328173 
##        41        42        43        44        45        46        47        48 
##  9.344030  9.384301  9.643947  9.913519  9.639726  9.400158  9.185687  9.332280 
##        49        50        51        52        53        54        55        56 
## 10.506962 10.761247 11.329480 11.071659 10.978113 11.397928 11.200569 11.383212 
##        57        58        59        60        61        62        63        64 
## 11.577034 11.360738 11.418805 11.399183 12.256033 12.070425 12.325736 12.149939 
##        65        66        67        68        69        70        71        72 
## 12.149824 12.487274 12.074760 12.117540 11.977107 11.754651 11.801766 11.633726 
##        73        74        75        76        77        78        79        80 
## 12.088846 11.948983 12.208060 12.086450 11.932442 11.196624 12.013096 12.403593 
##        81        82        83        84        85        86        87        88 
## 11.812087 11.910424 12.423215 12.115198 12.759959 12.613936 12.319381 12.525296 
##        89        90        91        92        93        94        95        96 
## 12.922523 12.952526 12.902331 12.898110 12.984925 12.885903 12.431293 11.873327 
##        97        98        99       100       101       102       103       104 
## 13.375941 13.348963 13.554878 13.817719 13.836086 13.257357 13.151034 13.222562 
##       105       106       107       108       109       110       111       112 
## 12.880322 12.692089 12.656040 12.272845 14.126508 13.583828 13.596605 14.137460 
##       113       114       115       116       117       118       119       120 
## 13.754834 14.053040 13.737038 13.824423 13.316766 13.333194 13.403011 13.591243
```

                                                                                              
Com os valores originais                                                                                                                                                             

```r
print(Base$TX_DES)
```

```
##   [1]  8.0  7.8  7.7  7.6  7.5  7.4  7.1  7.0  6.8  6.9  7.3  7.8  8.1  7.9  7.7
##  [16]  7.5  7.4  7.2  7.0  6.8  6.6  6.3  6.5  6.8  7.2  7.2  7.1  6.9  7.0  7.0
##  [31]  6.9  6.7  6.6  6.6  6.9  7.5  8.0  8.1  8.3  8.4  8.7  8.9  9.0  9.1  9.1
##  [46]  9.1  9.6 10.3 11.1 11.3 11.3 11.4 11.7 11.9 11.9 11.9 12.0 12.2 12.7 13.3
##  [61] 13.9 13.7 13.4 13.1 12.9 12.7 12.5 12.3 12.1 11.9 12.3 12.7 13.2 13.0 12.8
##  [76] 12.6 12.4 12.3 12.0 11.9 11.7 11.7 12.2 12.6 12.8 12.6 12.4 12.1 12.0 11.9
##  [91] 11.9 11.8 11.3 11.1 11.4 11.8 12.4 12.7 13.1 13.6 14.1 14.8 14.9 14.6 14.4
## [106] 14.2 14.5 14.6 14.9 14.8 14.7 14.2 13.7 13.1 12.6 12.1 11.6 11.1 11.2 11.2
```

                                                                              
Para poder colocar estes valores em gráficos e analisar seu comportamento será necessário um ajuste na base de dados:

Inicio carregando um arquivo com as mesmas informações, apenas uma coluna nova para data:

```r
dados1 <- read.csv2(file = "dados1.csv", header = TRUE)
head(dados1)
```

```
##    data2   Data TX_DES SL_MIN TX_SLC VAR_IPCA
## 1 Jan-12 Jan-12    8.0    622   0.89     0.56
## 2 Feb-12 fev/12    7.8    622   0.75     0.45
## 3 Mar-12 Mar-12    7.7    622   0.82     0.21
## 4 Apr-12 abr/12    7.6    622   0.71     0.64
## 5 May-12 mai/12    7.5    622   0.74     0.36
## 6 Jun-12 Jun-12    7.4    622   0.64     0.08
```
E também a utilização dos pacotes necessários:                                                          
                                                                                            
                                                                                        

```r
library(dplyr)
library(lubridate)
```

```
## 
## Attaching package: 'lubridate'
```

```
## The following objects are masked from 'package:base':
## 
##     date, intersect, setdiff, union
```

Vamos utilizar funções para criar uma sequência de datas que serão incorporadas à base de dados:


```r
data_inicial <- ymd("2012-01-01")
data_final <- ymd("2021-12-01")
dados1$data4 <- seq(data_inicial, data_final, "month")
head(dados1)
```

```
##    data2   Data TX_DES SL_MIN TX_SLC VAR_IPCA      data4
## 1 Jan-12 Jan-12    8.0    622   0.89     0.56 2012-01-01
## 2 Feb-12 fev/12    7.8    622   0.75     0.45 2012-02-01
## 3 Mar-12 Mar-12    7.7    622   0.82     0.21 2012-03-01
## 4 Apr-12 abr/12    7.6    622   0.71     0.64 2012-04-01
## 5 May-12 mai/12    7.5    622   0.74     0.36 2012-05-01
## 6 Jun-12 Jun-12    7.4    622   0.64     0.08 2012-06-01
```

                                                                                            
                                                                                             
Vamos carregar o pacote especifico para a criação dos gráficos comparativos:


```r
library(ggplot2)
```

```
## 
## Attaching package: 'ggplot2'
```

```
## The following objects are masked from 'package:psych':
## 
##     %+%, alpha
```

E por fim, fazemos o Plot do gráfico da taxa de desemprego retirada da
série histórica:



```r
g1 <- ggplot(dados1, aes(data4, TX_DES)) + 
  geom_line() +
  xlab("meses") + 
  ylab("Variação da Taxa de Desemprego") + 
  scale_x_date(date_breaks = "12 month", date_labels = "%b\n%Y")

g1
```

![](Trabalho-Final-Econometria_files/figure-latex/unnamed-chunk-19-1.pdf)<!-- --> 
                                                                                                            
Agora para efeito de comparação, vamos gerar o mesmo gráfico para os valores estimados:


```r
g2 <- ggplot(dados1, aes(data4, EST_REG)) + 
  geom_line() +
  xlab("meses") + 
  ylab("Variação da Taxa de Desemprego") + 
  scale_x_date(date_breaks = "12 month", date_labels = "%b\n%Y")

g2
```

![](Trabalho-Final-Econometria_files/figure-latex/unnamed-chunk-20-1.pdf)<!-- --> 
                                                                                            
                                                                                            

Podemos notar que os suportes em 6, 12,5 e 15 são respeitados por ambas as séries. O modelo compreende bem as direções apontadas e confirma a importância das três variáveis destacadas para o entendimento da taxa de desemprego.   
  
  
  
  
CONCLUSÃO  
  
    
      
Com este trabalho pudemos confirmar as relações que já estão difundidas no campo acadêmico.  
É importante destacar que a correlação pressuposta pelo modelo não implica em causalidade. Podemos investigar alguns pontos importantes para entender esta correlação.
Foi possível confirmar a correlação positiva entre aumento de salário mínimo e o aumento da taxa de desemprego. A possível causalidade entre aumento do salário mínimo e aumento na taxa de desemprego, se deve à produtividade dos individuos que não é a mesma, e podem estar abaixo do nível minimo de salário, desta forma estes individuos incorreriam em custos excessivos para as empresas e acabam sem emprego.   
  
Assim como também percebemos a relação positiva entre aumento da taxa selic e aumento da taxa de desemprego, a taxa selic neste estudo impactou mais que a variação do salário mínimo. A possível causalidade aqui seria explicada por uma queda no consumo e aumento da disposição a poupança dos individuos, o que faz as empresas revisarem suas estrategias de investimento, uma vez que podem observar queda em suas receitas.  
Seria possível também observar que o crédito para as empresas ficaria mais dispendioso, obrigando-as a cortar custos.  

   
Podemos verificar também a correlação negativa entre taxa de inflação e taxa de desemprego, demonstrando que um aumento na taxa de inflação pode incorrer em uma queda na taxa de desemprego.  
Importante destacar que o modelo neste caso pressupõe que o aumento na taxa de inflação geraria uma queda na taxa de desemprego, porém, não podemos afirmar que esses empregos se manteriam ao longo do tempo apenas pela alta taxa de inflação.  
O que poderíamos afirmar neste caso, seria que enquanto estiver aumentando a taxa de inflação, vamos observar quedas na taxa de desemprego.  

  
Referências  
GUJARATI, N. D. Econometria básica. 5.ed. New York, EUA: Amgh, 2011.  
PINDYCK, Robert S.; RUBINFELD, Daniel L. ECONOMETRIA Modelos e Previsões. 4.ed.Rio de Janeiro, BR: Elsevier Editora, 2004.  
IBGE: Instituto Brasileiro de Geografia e Estatistica, Disponível em: https://www.ibge.gov.br/estatisticas/todos-os-produtos-estatisticas.html. Acesso em: 29/04/2022.
IPEADATA. Disponível em: http://www.ipeadata.gov.br/Default.aspx. Acesso em: 28/04/2022.
Infomoney, Disponível em: https://www.infomoney.com.br/. Acesso em: 29/04/2022.
  
