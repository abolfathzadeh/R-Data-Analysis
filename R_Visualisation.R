#To load graphics package
library("graphics")

#To load datasets package
library("datasets")

#To load mtcars dataset
data(mtcars)
data(movies)
#To analyze the structure of the dataset
str(mtcars)

#To plot mpg(Miles per Gallon) vs Number of cars
plot(mtcars$mpg, xlab = "the Number of cars", ylab = "Miles per Gallon", col = "green")

#To find relation between hp (Horse Power) and mpg (Miles per Gallon)
plot(mtcars$hp,mtcars$mpg, xlab = "HorsePower", ylab = "Miles per Gallon", type = "h", col = "blue")


#To draw a barplot of hp
#Horizontal
barplot(mtcars$hp,xlab = "HorsePower", col = "cyan", horiz = TRUE)
#Vertical
barplot(mtcars$hp, ylab = "HorsePower", col = "cyan", horiz = FALSE)

barplot(mtcars[,c(3)], col = "yellow")


#To find histogram for mpg (Miles per Gallon)
hist(mtcars$mpg,xlab = "Miles Per Gallon", main = "Histogram for MPG", col = "yellow")

hist(mtcars$mpg,xlab = "Miles Per Gallon", main = "Histogram for MPG", col = "red", breaks = 40)
hist(mtcars$mpg,xlab = "Miles Per Gallon", main = "Histogram for MPG", col = "blue", breaks = 10, ylim = c(0,30))

plot(mtcars$carb, mtcars$mpg, type = "l", col = "red", lty = "dashed", lwd = 3)     # Try "o" "p" "l" "b"

plot(mtcars$carb, mtcars$mpg, type = "p", col = "blue")     # Try "o" "p" "l" "b"

plot(mtcars$carb, mtcars$mpg, type = "b", col = "green", lty = "dotted")     # Try "o" "p" "l" "b"

#To draw boxplots for disp (Displacement) and hp (Horse Power)
boxplot(mtcars[,3:4])

boxplot(mtcars[,c(6,3,4)])



#-----------------------------
install.packages("ggplot2")

library(ggplot2)

#Since the following columns have discrete(categorical) set of values, So we can
#convert them to factors for optimal plotting
mtcars$am <- as.factor(mtcars$am)
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$vs <- as.factor(mtcars$vs)
mtcars$gear <- as.factor(mtcars$gear) 
#To draw scatter plot
ggplot(mtcars, aes(x= cyl , y= vs)) + geom_point()


#Here width argument is used to set the amount of jitter
ggplot(mtcars, aes(x= cyl , y= vs)) + geom_jitter(width = 0.1)

#Transparency set to 50%
ggplot(mtcars, aes(x= cyl , y= vs)) + geom_jitter(width = 0.1, alpha = 0.5)

#We use the color aesthetic to introduce third variable with a legend on the right side
correlationggplot(mtcars, aes(x= cyl,y= vs,color = am)) + geom_jitter(width = 0.1, alpha = 0.5)


#To add the labels
ggplot(mtcars, aes(x= cyl , y= vs ,color = am)) + 
  geom_jitter(width = 0.1, alpha = 0.5) + 
  labs(x = "Cylinders",y = "Engine Type", color = "Transmission(0 = automatic, 1 = manual)")


#To plot with shape =1 and size = 4
ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) + 
  geom_point(size = 4, shape = 1, alpha = 0.6) + 
  labs(x = "Weight",y = "Miles per Gallon", color = "Cylinders")

#------------------------------

#To draw a bar plot of cyl(Number of Cylinders) according to the Transmission type
#using geom_bar() and fill()
ggplot(mtcars, aes(x = cyl, fill = am)) + 
  geom_bar() + 
  labs(x = "Cylinders", y = "Car count", fill = "Transmission")

#To find the proprtion, we use position argument,as follows:
ggplot(mtcars, aes(x = cyl, fill = am)) + 
  geom_bar(position = "fill") + 
  labs(x = "Cylinders",y = "Proportion",fill = "Transmission")


ggplot(mtcars, aes(x = cyl, fill = am)) + 
  geom_bar(position = "fill") + 
  theme_classic()+ 
  labs(x = "Cylinders",y = "Proportion",fill = "Transmission")

#To facet the following plot according to gear(Number of Gears(3,4,5)), we use
#facet_grid() function as follows:
  ggplot(mtcars, aes(x = cyl, fill = am)) + 
  geom_bar() + 
  facet_grid(.~gear)+           
  facet_grid(rows ~ columns)  theme_bw() +  labs(title = "Cylinder count by transmission and Gears",x = "Cylinders",       y = "Count",fill = "Transmission")
  
    
    
#To facet the following plot according to gear(Number of Gears(3,4,5)), we use
#facet_grid() function as follows:
ggplot(mtcars, aes(x = cyl, fill = am)) + 
geom_bar() + facet_grid(.~gear)+           
theme_bw() +  labs(title = "Cylinder count by transmission and Gears",x = "Cylinders",       y = "Count",fill = "Transmission")
    



#To facet the following plot according to gear(Number of Gears(3,4,5)), we use
#facet_grid() function as follows:
  ggplot(mtcars, aes(x = cyl, fill = am)) + 
  geom_bar() + 
  facet_grid(.~gear)+           
    theme_bw() +  labs(title = "Cylinder count by transmission and Gears",x = "Cylinders",       y = "Count",fill = "Transmission")
  



#To plot a histogram for mpg (Miles per Gallon),
#according to cyl(Number of Cylinders), we use the geom_histogram() functiong
ggplot(mtcars, aes(mpg,fill = cyl)) + 
  geom_histogram(binwidth = 1)+ 
  theme_bw()+ 
  labs(title = "Miles per Gallon by Cylinders",x = "Miles per Gallon",y =       
         "Count",fill = "Cylinders")


#To show overlapping, we set position to identity and alpha to 0.5
ggplot(mtcars, aes(mpg,fill = cyl)) + 
  geom_histogram(binwidth = 1,position = "identity", alpha = 0.5)+ 
  theme_bw()+ 
  labs(title = "Miles per Gallon by Cylinders",x = "Miles per Gallon",y = "Count",fill = "Cylinders")


#To overcome overlapping, we can use the frequency polygon, as follows:
ggplot(mtcars, aes(mpg, color = cyl)) + geom_freqpoly(binwidth = 1)+ 
  theme_bw()+ 
  labs(title = "Miles per Gallon by Cylinders",x = "Miles per Gallon",y = "Count",fill = "Cylinders")


#To draw a Box plot 
ggplot(mtcars, aes(x = cyl,y = mpg)) + 
  geom_boxplot(fill = "cyan", alpha = 0.5) + 
  theme_bw() + 
  labs(title = "Cylinder count vs Miles per Gallon",x = "Cylinders",      
       y = "Miles per Gallon")

#To draw a Box plot 
ggplot(mtcars, aes(x = cyl,y = mpg,fill = am)) + 
  geom_boxplot( alpha = 0.5) + 
  theme_bw() + 
  labs(title = "Cylinder vs MPG by Transmission",x = "Cylinders",      
       y = "Miles per Gallon",fill = "Transmission")
