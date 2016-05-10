mediacontaminante <- function(directorio,contaminante,id){
    
    l <- length(id)
    result <- vector("numeric", l)
    contador <- vector("numeric", l)
    
    if (contaminante == "nitrato") {
        c <- 3
    } else {
        c<-2
    }

    for (a in 1:l){
        id2 <- id[a]
        if (id2<10){
            id3<- paste(0,id2, sep="0")
        }else if (id2<99){
            id3<- paste(0,id2, sep="")
        }else {
            id3 <- id2
        }
        idv <- paste(id3,"csv",sep=".")
    
        x <- paste(directorio, idv, sep="/")
        db<-read.csv(x)
        contador[a]<- sum(complete.cases(db[,c])) 
        result[a] <- mean(db[,c], na.rm = TRUE)
    }
        media <- sum(result*contador)/sum(contador)
        
        media
}
   #Donde:
    #-directorio: directorio de la base de datos
    #-contaminante: sulfato o nitrato
    #-id: id's de bases de datos a checar

mediacontaminante("C:/Users/Diego/Documents/4° Semestre/Progrmación Act. III/Caso 1/specdata", "nitrato", 70:72)

