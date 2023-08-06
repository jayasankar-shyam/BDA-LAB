data(iris)

t.test(iris$Sepal.Length,mu=3)
t.test(iris$Sepal.Length,iris$Petal.Length,mu=5,var.equal = T)
t.test(iris$Sepal.Length,iris$Petal.Length,mu=5,paired=T)

model=aov(Sepal.Length~Petal.Length,data=iris)
summary(model)
wilcox.test(iris$Sepal.Length,mu=3)
kruskal.test(iris$Sepal.Length,iris$Petal.Length)
fligner.test(iris$Sepal.Length,iris$Petal.Length)
ansari.test(iris$Sepal.Length,iris$Petal.Length)
binom.test(x=64,n=100,p=0.6)
prop.test(x=64,n=100,p=0.6)
