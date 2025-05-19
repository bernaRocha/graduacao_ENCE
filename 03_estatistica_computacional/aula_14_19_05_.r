#### Aula 9 notebook

library(ggplot2)
View(cars)

ggplot(cars, aes(x <- speed, y <- dist)) + geom_point()

cor.test(cars$speed, cars$dist)
#	Pearson's product-moment correlation

# data:  cars$speed and cars$dist
# t = 9.464, df = 48, p-value = 1.49e-12
# alternative hypothesis: true correlation is not equal to 0
# 95 percent confidence interval:
# 0.6816422 0.8862036
# sample estimates:
#      cor 
# 0.8068949 

View(mtcars)
p1 <- ggplot(mtcars, aes(x<- hp, y <- mpg)) + geom_point()
p1

cor.test(mtcars$hp, mtcars$mpg)

#	Pearson's product-moment correlation

# data:  mtcars$hp and mtcars$mpg
# t = -6.7424, df = 30, p-value = 1.788e-07
# alternative hypothesis: true correlation is not equal to 0
# 95 percent confidence interval:
#  -0.8852686 -0.5860994
# sample estimates:
#       cor 
# -0.7761684 
