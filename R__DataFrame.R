#Data Frame
{
  x <- matrix(1:6,ncol=3,nrow=2)
  x
  
  #x1 <- matrix(1:5,ncol=3,nrow=2)
  #x1
  
  x1 <- matrix(1:6,ncol=3,nrow=2,byrow = TRUE)
  x1
  
  a=c(1,2,3)
  b=c(4,5,6)
  x3=cbind(a,b)
  x3
  
  a2=c(1,2,3)
  b2=c(4,5,6)
  x4=rbind(a2,b2)
  x4
  
  x5<- 1:6
  dim(x5)<- c(2,3)
  x5
  
  x7 <- matrix(1:9,dimnames = list(c('w','r','t'),c('a','s','u')),ncol=3,nrow=3,byrow = TRUE)
  x7 ['r','s']=10
  x7 [2,3]=10
  print(x7)
  #print(x7[2,])
  #print(x7[-2,])
  #print(x7 [c(2,3),c(1,2)])
  #----------------------------------------
  #delete items
  x7<- x7[,-2]
  print(x7)
  #----------------------------------------
  R1<- matrix(c(5:16),nrow=4,ncol=3)
  R2<- matrix(c(1:12),nrow=4,ncol=3)
  r_sum <- R1+R2
  r_min <- R1-R2
  r_mult <- R1*R2
  #print(R1)
  #print(r_sum)
  #print(r_mult)
  #----------------------------------------
  x8<-x7
  x8
  print( is.matrix( x8[2,]))
  print( is.vector( x8[2,]))
  print( is.matrix( x8[2,,drop=FALSE]))
}

{
  #method1
  #file=read.csv(file.choose())
  #file
  #method2
  getwd()
  #setwd("C:/Users/user/Documents")
  #file=read.csv('Demographic-Data (1).csv')
  setwd("C:/Uni_doc/Data_Science/R")
  file=read.csv('Demographic-Data.csv')
  file
  
  nrow(file)
  ncol(file)
  head(file, n=10)# default n=6 # Assumption- File name is Data
  tail(file, n=8) # default n=6
  str(file) 
  summary(file)
  
  file[3,3] # Assumption- File name is Data
  file[3, "Birth.rate"]
  file$Internet.users  # identical to starts[,"internet.users"]
  file$Internet.users[2]
  
  file[1:10,]
  file[3:9,]
  file[c(1,195),]
  
  file[1,] 
  is.matrix(file[1,])
  is.data.frame(file[1,])
  file[,1]
  is.data.frame(file[,1])
  is.data.frame(file[,1, drop=F])
  
  
  file$Birth.rate+file$Internet.users
  file$Birth.rate*file$Internet.users
  file$Birth.rate>file$Internet.users
  
  file$mycal1 <- file$Birth.rate*file$Internet.users
  head(file)
  
  file$recycling <- 1:5
  head(file, n=12)
  
  file$recycling <-NULL
  file$mycal <-NULL
  head(file)
  
  file$mynewcolumn <-NULL
  head(file)
  file$mynewcolumn <-''
  head(file)
  file$mynewcolumn <-NULL
  head(file)
}