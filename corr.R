corr <- function(directorio,id){
    l <- length(id)
    result <- vector("numeric", l)
    for (a in 1:l){
        
        id2 <- id[a]
        
        if (id2<10){
            id3 <- paste(0,id2, sep="0")
        }else if (id2<99){
            id3 <- paste(0,id2, sep="")
        }else {
            id3 <- id2
        }
        idv <- paste(id3,"csv",sep=".")
        x <- paste(directorio, idv, sep="/")
        
        db<-read.csv(x)
        j <- nrow(db)
        xy <- db[,2]
        yz <- db[,3]
        result[a] <- cor(xy,y = yz, use= "complete.obs")
    }
    result
}
corr("C:/Users/Diego/Documents/4° Semestre/Progrmación Act. III/Caso 1/specdata", 1:9)
