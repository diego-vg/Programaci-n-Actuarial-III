airquality
promedioCols <- function(x, na.rm=TRUE){
    l <- ncol(x)
    result <- vector("numeric", l)
    for (i in 1:l) {
        result[i] <- mean(x[,i], na.rm=na.rm)
    }
    result
}
promedioCols(airquality)
