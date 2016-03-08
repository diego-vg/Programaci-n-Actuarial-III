#Estructuras de control

x<-11
if (x>3) {
    y <- 10
}else{
    y <-5
}
y

x=2
y<- if(x>3) {
    10}else{
        5
    }
y

#For
for (i in 1:10){
    print(i)
}


x <- matrix(1:6,2,3)
x
for (i in seq_len(nrow(x))){
    for (j in seq_len(ncol(x))) {
        print(x[i,j])
    }
}
