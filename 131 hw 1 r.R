library(tidymodels)
library(tidyverse)
library(ISLR)
library(ggplot2)
install.packages("corrplot")
library(corrplot)
?mpg
view(mpg)
?ggplot2

#EXERCISE 1
## histogram of hwy 
hwy <- mpg$hwy
hist(hwy)

#EXERCISE 2
## scatter plot with cyl and hwy
cty <- mpg$cty
plot(hwy, cty, main = "Relationship between City Miles per Gallon 
     and Highway Miles per Gallon",
     xlab = "Highway Miles per Gallon", ylab = "City Miles per Gallon")

#EXERCISE 3
## bar plot of manufacturer
bp <- ggplot(data=mpg, mapping = aes(x=manufacturer)) + geom_bar(stat = "count")
bp 

## flipping manufacturers onto the y-axis 
bp + coord_flip()
## ordered bars by height 
bp2 <- ggplot(data=mpg, mapping = aes(y=fct_infreq(manufacturer))) + geom_bar(stat = "count")
bp2
order(mpg$manufacturer)

#EXERCISE 4
## boxplot of hwy grouped by cyl 
boxplot(mpg$hwy ~ mpg$cyl)

#EXERCISE 5
## removed non-numeric observations 
newdata <- subset(mpg, select = -c(manufacturer,model, trans, class, fl, drv))
## lower triangle correlation matrix 
M = cor(newdata)
corrplot(M, type = 'lower', diag = FALSE)

