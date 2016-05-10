#Saludos
m1 <- 10*runif(1)
if (m1[1]<3){
    x <- "hola"} else if(m1[1]<5){
        x <- "que onda"
    } else if (m1[1]<6){
        x <- "que pedo"
    } else if (m1[1]<8){
        x <- "que pex"
    } else if (m1[1]<10){
        x <- "que hubo"
    }
x

#Prueba de funcionamiento
n<- 1000000
mensajes <-vector("character", n)
for(i in 1:n){
    y <- runif(1)
    if (y<=0.3){
        mensajes[i]<- ("Mensaje 30%")
    }else if(y<=0.5){
        mensajes[i] <- ("Mensaje 20% A")
    }else if (y<=0.7){
        mensajes[i] <- ("Mensaje 20% B")
    }else if (y<=0.9){
        mensajes[i] <- ("Mensaje 20% C")
    }else if (y<=1){
        mensajes[i] <- ("Mensaje 10%")
    }
}
plot(table(mensajes))
table(mensajes)
