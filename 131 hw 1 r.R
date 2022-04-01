library(tidymodels)
library(tidyverse)
library(ISLR)
library(ggplot2)
?mpg
view(mpg)
?ggplot2

#exercise 1
hwy <- mpg$hwy
hist(hwy)

#exercise 2

cty <- mpg$cty
plot(hwy, cty, main = "Relationship between City Miles per Gallon 
     and Highway Miles per Gallon",
     xlab = "Highway Miles per Gallon", ylab = "City Miles per Gallon")

#exercise 3?
counts = table(manufacturer)
barplot(counts, main = "Miles per Gallon",
        xlab = "Manufacturer")
bp <- ggplot(data=mpg, mapping = aes(x=manufacturer, y=length())) + geom_col()
bp

#exercise 4
bp2 <- ggplot(data=mpg, mapping = aes(x=hwy, y=cyl)) + geom_col()
bp2

#exercise 5
