{
  #gc(reset = TRUE)
  rm(grade)
mark<-as.integer(readline(prompt="Enter Mark: " ))
if(mark >100 || mark<0)   grade<-" Not valid"
else if(mark>=70) grade<-"Distinction"
else if(kmark>=60) grade<-"Merit"
else if(mark>=50) grade<-"Pass"
else grade<-"Fail"

message=paste('your result in this course is :',grade)
print(message)
gc(reset = TRUE)
}

#--------------
{
  rm(message)
  for (i in 1:10) {
    x= rnorm(1)
    if (x>=1) res="greater then 1"
    else if (x>=0) res="between 0 and 1"
    else res="less than 0"
    message=paste('your number is',x," and the result is ",res)
    print(message)
  }
}

#---------------
{
  A<-10
  while(A>0){
    x= rnorm(1)
    if (x>=1) res="greater then 1"
    else if (x>=0) res="between 0 and 1"
    else res="less than 0"
    message=paste('your number is',x," and the result is ",res)
    print(message)
    A=A-1
  }
}
#-------------------
#Print 1 to 10 numbers using the While loop.
{i=1
while (i<=10)
{
  print(i)
  i=i+1
}
}

#------------------
#Activity 6
#Write a for loop that iterates over the numbers 1 to 7 
#and prints the cube of each number using print().
{for (i in 1:7)
{
  print(i*i*i)
}
}
#Activity 7
#Print your name 10 times using the Repeat loop.
{
  name<-"shirin"
  xx<-1
  repeat
  {
    print(name)
    if(xx==10) break
    xx=xx+1
  }
}
#---------
#Activity 8
#Write a while loop that prints out standard random normal numbers
#(use rnorm()) but stops (breaks) if you get a number bigger than 1.
{
  while(TRUE){
    q<- rnorm(1)
    print(q)
    if (q >= 1) break
    if (q > 0) res<- "between 1 and 0" 
    else res<- "less than 0"
    message=paste('your number is',q," and the result is ",res)
    print(message)
  }
}
#----
#Activity 9
#Using next adapt the loop from the last exercise 
#so that it doesn’t print negative numbers
{
  while(TRUE){
    q<- rnorm(1)
    print(q)
    if (q >= 1) break
    if (q > 0) res<- "between 1 and 0" 
    else next
    message=paste('your number is',q," and the result is ",res)
    print(message)
  }
}

#----------
num1 <-1.3:6.4
num1
num2=c(1,2,4,5,6)
num2[-1]


xt<-c(1,3,5,4)
xy<-c(4,6,7)
yy=xt+xy
yy
u<-xt*xy
u

print(sort(u))
print(sort(u, decreasing = TRUE))
