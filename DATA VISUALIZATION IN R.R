install.packages("dplyr")
install.packages("ggplot2")
install.packages("corrplot")
library(ggplot2)
library(corrplot)
library(dplyr)
install.packages("lattice")

install.packages("ellipse")
library(ellipse)
library(lattice)


data("iris")
head(iris)
?iris
dim(iris)
table(iris$Species)


plot(iris)


x <- iris[,1:4]
y <- iris[,5]

par(mfrow=c(1,4))
  for (i in 1:4) {
  boxplot(x[,i],main=names(iris)[i])
  }  
    
  

par(mfrow=c(1,4))
for (i in 1:4) {
plot(density(iris[,i]),main=names(iris)[i])  
}



##HISTOGRAM

par(mfrow=c(1,4))
for (i in 1:4) {
hist(iris[,i],main=names(iris)[i])  
}

install.packages('caret',repos = 'http://cran.us.r-project.org')


x <- iris[,1:4]
y <- iris[,5]
featurePlot(x=x,y=y,plot = "ellipse")



##ggplot (lengh)

ggplot(iris,aes(x=Sepal.Length,y=Petal.Length,colour=Species))+
  geom_point()+
  ggtitle('Iris Species by Petal Length and Sepal Length')


##ggplot (width)
ggplot(iris, aes(x = Sepal.Width, y = Petal.Width, colour = Species)) + 
  geom_point() +
  ggtitle('Iris Species by Petal Length and Sepal Width')




##linear regression (for length)

ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, color=Species)) + 
  geom_point()+geom_smooth(method = "lm")

##linear regression (for width)


ggplot(iris, aes(x=Sepal.Width, y=Petal.Width,  color=Species)) + 
  geom_point()+geom_smooth(method = "lm")
## `geom_smooth()` using formula 'y ~ x'










