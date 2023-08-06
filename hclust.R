data(iris)
data=rbind(iris[1:10,3:4],iris[60:70,3:4],iris[140:150,3:4])
clusters=hclust(dist(data))
plot(clusters)
