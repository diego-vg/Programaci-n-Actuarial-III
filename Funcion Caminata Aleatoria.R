CamAl <- function(x,a){
    secuencia <- vector("numeric",x)
    for (i in 1:x){
        #length(secuencia) <- length(secuencia) + 1
        secuencia[i]<- a
        moneda <-runif(1)
        if(moneda<=0.5){
            a <- a + 0.5
        } else {
            a <- a - 0.5
        }
    }
    secuencia
    plot(secuencia,type="l")
}
    #CamAl("Número de iteraciones", "Punto inicial")
    CamAl(500,20)
    