library(ggfortify)
data(iris)
data=iris[,-5]
k=3
model=kmeans(data,centers=k)

print(autoplot(model,data,frame=T))
