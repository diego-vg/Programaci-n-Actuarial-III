airquality
promedioCols <- function(x){
    y <- mean(airquality[,c(x)])
    y
}
promedioCols()