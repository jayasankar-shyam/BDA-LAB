library(dbscan)
data(iris)

data=iris[,-5]

model = dbscan(data,eps=0.5,minPts=5)
plot(data,col=model$cluster,pch=20,main="DBSCAN")

cat("Number of clusters: ",length(unique(model$cluster[model$cluster!=-1])),"\n")
cat("Number of noise points: ",sum(model$cluster==-1),"\n")
