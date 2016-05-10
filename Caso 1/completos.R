completos <- function(directorio,id){
    contador <- 0
    l <- length(id)
    result <- vector("numeric", l)
    for (a in 1:l){
        
        id2 <- id[a]
        
        if (id2<10){
            id3 <- paste(0,id2, sep="0")
        }else if (id2<100){
            id3 <- paste(0,id2, sep="")
        }else {
            id3 <- id2
        }
        idv <- paste(id3,"csv",sep=".")
        x <- paste(directorio, idv, sep="/")
        
        db<-read.csv(x)
        
            result[a] <- sum(complete.cases(db))
    }
        data.frame(id, result)
}
a <- completos("C:/Users/Diego/Documents/4° Semestre/Progrmación Act. III/Caso 1/specdata", 1:323)
