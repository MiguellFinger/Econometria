os scripts da aula sobre regressao linear multipla
# slide 06

# Cálculo da estimativa dos parâmetros da regressão betachapéu

y <- matrix(c(1.5,6.5,10,11,11.5,16.5),
            ncol = 1, nrow = 6, byrow = T)
y

X <- matrix(c(1,1,1,1,1,1,
              0,1,1,2,2,3,
              0,2,4,2,4,6),
            ncol = 3,nrow = 6,byrow = F)
X

Xt <- t(X)
Xt

XtX <- Xt %*% X
XtX

Xty <- Xt %*% y
Xty

XtXinv <- solve(XtX)
XtXinv

beta <- XtXinv %*% Xty
beta

# Cálculo das somas de quadrados, da correção para a média e do
# coeficiente de determinação R2

nobsv <- XtX[[1,1]]
nobsv

somaY <- Xty[[1,1]]
somaY

medY <- somaY/nobsv
medY

nmedY2 <- nobsv*medY^2
nmedY2

yt <- t(y)
yt

yty <- yt %*% y
yty


betaXty <- t(beta) %*% Xty
betaXty

SQT <- yty - nmedY2
SQT

SQE <- t(beta) %*% Xty - nmedY2
SQE

SQR <- SQT - SQE
SQR

k <- ncol(X)
k

s2 <- SQR/(nobsv - k)
s2

nmedY2 <- nobsv*medY^2
nmedY2

s2_scalar <- as.vector(s2)

mvcbeta <- round(s2_scalar*XtXinv,4)
mvcbeta

R2 <- round(SQE/SQT,4)
R2

# Teste de ferro para os parâmetros estimados da regressão

beta1est <- beta[[1]]
beta1est

varbeta1est <- mvcbeta[[1,1]]
varbeta1est

epbeta1est  <- round(sqrt(varbeta1est),4)
epbeta1est

tbeta1 <- round((beta1est - 0)/epbeta1est,4)
tbeta1

gl <- (nobsv - k)
gl

abs(round(qt(0.025,gl),4))

round(pt(tbeta1,gl),4)

round(2*(1 - pt(tbeta1,gl)),4)

tbeta2 <- round((beta[[2]] - 0)/round(sqrt(mvcbeta[[2,2]]),4),4)
tbeta2

gl <- (nobsv - k)

abs(round(qt(0.025,gl),4))

round(pt(tbeta2,gl),4)

round(2*(1 - pt(tbeta2,gl)),4)

tbeta3 <- round((beta[[3]] - 0)/round(sqrt(mvcbeta[[3,3]]),4),4)
tbeta3

# IC dos parâmetros estimados da regressão

gl <- (nobsv - k)

abs(round(qt(0.025,gl),4))

round(pt(tbeta3,gl),4)

round(2*(1 - pt(tbeta3,gl)),4)

t0 <- abs(round(qt(0.025,gl),4))
t0

epbeta1 <- round(sqrt(round(mvcbeta[[1,1]],4)),4)
epbeta1

icinf1 <- round(beta[[1]] - t0*epbeta1,4)
icinf1

icsup1 <- round(beta[[1]] + t0*epbeta1,4)
icsup1

epbeta2 <- round(sqrt(round(mvcbeta[[2,2]],4)),4)

round(beta[[2]] - t0*epbeta2,4)

round(beta[[2]] + t0*epbeta2,4)

epbeta3 <- round(sqrt(round(mvcbeta[[3,3]],4)),4)
epbeta3

round(beta[[3]] - t0*epbeta3,4)

round(beta[[3]] + t0*epbeta3,4)

# Teste F ou Análise de Variância da Regressão

SQE
SQR
SQT

glreg <- k - 1
glreg
glres <- nobsv - k
glres

SQME <- round(SQE/glreg,4)
SQME

SQMR <- round(SQR/glres,4)
SQMR

Fcalc <- round(SQME/SQMR,4)
Fcalc

pvalor <- round(df(Fcalc, glreg, glres),4)
pvalor

Ftabela <- round(qf(0.95, glreg, glres),4)
Ftabela

# Previsão Pontual

x0 <- matrix(c(1,2,4), nrow = 3, ncol = 1,
             byrow = TRUE)
x0

beta

y0 <- t(x0) %*% beta
y0

# IC da previsão média

vy0med <- round(s2 %*% t(x0) %*% XtXinv %*% x0,4)
vy0med

epy0med <- round(sqrt(vy0med),4)
epy0med

linfy0med <- (y0 - round(t0*epy0med,4))
linfy0med

lsupy0med <- (y0 + round(t0*epy0med,4))
lsupy0med

# IC da previsão individual

vy0ind <- round(s2 %*% (1 + t(x0) %*% XtXinv %*% x0),4)
vy0ind

epy0ind <- round(sqrt(vy0ind),4)
epy0ind

linfy0ind <- (y0 - round(t0*epy0ind,4))
linfy0ind

lsupy0ind <- (y0 + round(t0*epy0ind,4))
lsupy0ind


# Usando a função lm()

# carregando os dados em planilha no formato csv usando a função
# read.csv2() que permite carregar dados com a vírgula como separador
# decimal

HV1987 <- read.csv2(file = "exnum_HV_1987.csv",
                    header = TRUE)
head(HV1987)

hv <- lm(y ~ X2 + X3, data = HV1987)
hv

hvs <- summary(hv)

options(width = 60)
hvs <- summary(hv)
hvs

names(hv)
hv$coefficients

# valores estimados

fitted(hv)
fitted.values(hv)

# IC

confint(hv,level = 0.95)

# matriz de var-cov de beta estimado

vcov(hv)

# coeficiente de determinação ajustado

names(hvs)
hvs$r.squared
hvs$adj.r.squared

hvs$residuals