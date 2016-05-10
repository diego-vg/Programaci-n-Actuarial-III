set.seed(1)
n <- 1000
x <- list(a=1:100, b=rnorm(n),c=rnorm(n,3), d=rnorm(n,5))
x
lapply(x,mean)
sapply(x, mean)

set.seed(1)
x <- matrix(rnorm(200),20,10)
(apply(x, 2, mean))

x
apply(x, 1, quantile, probs=c(0.25,0.75))

a <- array(rnorm(2*2*10), c(2,2,10))
apply(a,c(2,3),mean)

str(napply)
?rep()

list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep,1:4,4:1)
