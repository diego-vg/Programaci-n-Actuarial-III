corr <- function(directorio,h){
    contador <- 0
    li <-list.files(directorio)
    lj <- length(li)
    result <- vector("numeric")
    id <- vector("numeric")
    
    for (a in 1:lj) {
        x <- paste(directorio, li[a], sep="/")
        db<-read.csv(x)
        y <- sum(complete.cases(db))
        if (sum(complete.cases(db))> h){
            contador <- contador + 1
            length(id) <- length(id) + 1
            id[contador] <- li[a]
            length(result) <- length(result) + 1
        }
    }
    id
    wx <- length(id)
    for (b in 1:wx){
        z <- paste(directorio, id[b], sep="/")
        bd<-read.csv(z)

        xy <- bd[,2]
        yz <- bd[,3]
        result[b] <- cor(xy,y = yz, use= "complete.obs")
    }
    
    result
}
crz <- corr("C:/Users/Diego/Documents/4° Semestre/Progrmación Act. III/Caso 1/specdata",0)

