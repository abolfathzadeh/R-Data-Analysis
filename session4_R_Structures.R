{

a = c(10, 20, 30)
res_sum=sum(a)
res_avg= mean(a)
res_min=min(a)
res_max=max(a)
print(paste("sum is ",res_sum,"average is",res_avg,"minimum is",res_min,"Maximum is",res_max))
}
#-------------
#Activity 11
#Write a program to find the Sum, Mean and Product of the Vector b
#, ignoring elements like NA or NaN.

{
  b=c(10, NULL, 20, 30, NA)
  
  res_sum_11=sum(b, na.rm = TRUE)
  res_avg_11= mean(b, na.rm = TRUE)
  res_min_11=min(b, na.rm = TRUE)
  res_max_11=max(b, na.rm = TRUE)
  print(paste("sum is ",res_sum_11,"average is",res_avg_11,"minimum is",res_min_11,"Maximum is",res_max_11))
  
}
#-----------

#Activity 12
#Write a program to test whether the numbers 25 and 56 are elements of the vector c
{
  c = c(10, 20, 30, 25, 9, 26)

  res_check_25='25' %in% c
  res_check_56= '56' %in% c
  print(res_check_25)
  print(res_check_56)
}

#--------------------
#Activity 13
#Write a program to count the total number of appearances of the number 20 for the given vector d

{
  d= c(10, 20, 30, 20, 20, 25, 9, 26)
  ar <- table(d)
  ar
  ar[names(ar)==20]
}
#duplicated(d)
#d[duplicated(d)]
#------------------------
#Activity 14
#Find the second-highest value of the given vector e
{
  e= c(3, 20, 27, 12, 25, 9)
  l = length(e)
  XX=sort(e, decreasing = TRUE)
  second_highest=XX[2]
  print(second_highest)
  
  XX2=sort(e)
  print(XX2[l-1])
  
  print(sort(e)[l-1])
  
  print(sort(e)[2])
  
}
#---------------
#Activity 15
#Write a program to find common elements from the 2 given vectors
{
  x_v = c(10, 20, 30, 20, 20, 25, 29, 26) 
  y_v = c(10, 50, 30, 20, 20, 35, 19, 56)
  print(intersect(x_v,y_v))
  
  #second way
  tst <- c(unique(x_v),unique(y_v))
  #print(tst)
  tst <- tst[duplicated(tst)]
  print(tst)
  #tst[duplicated(tst)]
} 
#--------------------------
#List
{
  lst<- list(1,3,'ddf',c(1,2,3))
  print(lst)
  length(lst)
  typeof(lst)
  names(lst)<-c('a','b','c','d')
  print(lst)
  print(lst[2])
  lst[5]<-'new value'
  
  lst[1]<-NULL
  lst[1]<-'new value'
  print(lst)
}  
  #----------
{ 
  xt<-list(1,3,5)
  xy<-list(4,6,7)
  yy=unlist(xt)+unlist(xy)
  print(yy)
  u<-unlist(xt)*unlist(xy)
  print(u)
  
}

#------------------
#Activity 16
#If: p <- c(2,7,8), q <- c(“A”, “B”, “C”) and x <- list(p, q), then what is the value of x[2]?
{
  p <- c(2,7,8)
  q <- c('A', 'B', 'C')
  x <- list(p, q)
  x[2]
}
#------------------
#  Activity 17
#If w <- c(2, 7, 8), v <- c(“A”, “B”, “C”) and x <- list(w, v), 
#then which R statement will replace “A” in x with “K”.
{
  w <- c(2, 7, 8)
  v <- c('A', 'B', 'C')
  x <- list(w, v)
  names(x)<-c('first','second')
  print(x)
  
  x[[2]][1]<-'K'
  
  x
}


#------------------
#Activity 18
#If a <- list (“x”=5, “y”=10, “z”=15), 
#which R statement will give the sum of all elements in a?
{
  a <- list ('x'=5, 'y'=10, 'z'=15)
  print(Reduce(`+`, a))
  rr <- unlist(a)
  print(sum(rr))
}

#------
#  Activity 19
#If Newlist <- list(a=1:10, b=“Good morning”, c=“Hi”), 
#write an R statement that will add 1 to each element of the first vector in Newlist.
{
  Newlist <- list(a=1:10, b='Good morning', c='Hi')
  Newlist
  Newlist$a <- Newlist$a+1
  Newlist
}
#-------------
#Activity 20
#If b <- list(a=1:10, c=“Hello”, d=“AA”),
#write an R expression that will give all elements, except the second, of the first vector of b.
{
  b <- list(a=1:10, c='Hello', d='AA')
  b$a
  b$a <- b[[1]][-2]
  b
}
#------------
#Activity 21
#Let y <- list("a", "b", "c") and q <- list("A", "B", "C", "a", "b", "c").
#Write an R statement that will return all elements of q that are not in y.
{
  y <- list("a", "b", "c")
  q <- list("A", "B", "C", "a", "b", "c")
  setdiff(q,y)

}