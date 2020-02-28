sample(1:100,15,replace = T)
sample(1:100,15,replace = T)
sample(1:100,15,replace = T)
sample(1:100,15,replace = T)
head(iris)
set.seed(4)
flores.elegidas<-sample(1:150,10,replace=T)
flores.elegidas
muestra.iris.repos<-iris[flores.elegidas,]
muestra.iris.repos


###muestre sin reposicion
sample(1:100,15,replace = F)
sample(1:100,15,replace = F)
sample(1:100,15,replace = F)
sample(1:100,15,replace = F)

set.seed(4)
flores.elegidas<-sample(1:150,10,replace=F)
flores.elegidas
muestra.iris.repos<-iris[flores.elegidas,]
muestra.iris.repos



##3muestreo sistemático
primera.flor<-sample(1:150,1)
primera.flor
incremento<-floor(150/10)
flores.elegidas<-seq(from=primera.flor,by=incremento,length.out = 10)
flores.elegidas
flores.elegidas<-flores.elegidas%%150
muestra.iris.sist<-iris[flores.elegidas,]
muestra.iris.sist
  

###muestreo estratificado
set.seed(25) 
fls.muestra.setosa=sample(1:50,4,replace=TRUE) 
fls.muestra.versicolor=sample(51:100,4,replace=TRUE) 
fls.muestra.virginica=sample(101:150,4,replace=TRUE) 
muestra.iris.est=rbind(iris[fls.muestra.setosa,],iris[fls.muestra.versicolor,],
                       iris[fls.muestra.virginica,])
muestra.iris.est
