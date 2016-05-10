y <- data.frame(a=1,b="a")
y
dput(y)
dput(y, file="y.R")

#Con la siguiente instrucción eliminamos de la memoria a y
rm(y)

#Recuperamos el objeto anterior a partir del archivo guardado
nueva.y <- dget(file="y.R")
nueva.y

#Dump
x <- "Programación Actuarial 3"
y <- data.frame(a=1, b="a")
dump(c("x","y"), file= "data.R")
rm(x,y)
source("data.R")

#Conexiones
con <- url("http://www.fcfm.buap.mx/","r")
readLines(con,10)
data <- read.csv(file="table.csv")

#Creación de vector
x<-c("a","b","c","c","d","e")
x

#Extraer elemento de un vector
x[1]
x[2]
x[1:4]
x[x>="c"]
u <- x == "c"
x[u]
x[!u]

#Extracción de una lista con []
x<-list(foo=1:4, bar=0.6)
#Con solo un corchete lo extrae como lista
x[1]
#Para extraerlo como vector se utiliza:
x[[1]]
x$foo

nombre <- "bar"
x[nombre]


#Actividad Jueves
z <- 5
k <- 1
secuencia <- vector("numeric",0)
while(z>=0 && z<=10){
    length(secuencia) <- length(secuencia) + 1
    secuencia[k]<- z
    moneda <-runif(1)
    if(moneda<=0.5){
        z <- z + 0.5
    } else {
        z <- z - 0.5
    }
    k <- k+1
    if(k>5000) break
}
secuencia
plot(secuencia,type="l")

?plot

miSuma <- function(x,y){
    x+y    
}

mayor10 <- function(x){
    x[x>10]
}







