library(caret)
library(e1071)
data(iris)
set.seed(123)

split=createDataPartition(iris$Species,times=1,p=0.80,list=FALSE)
train=iris[split,]
test=iris[-split,]

model=svm(Species~.,data=train,kernel='linear',type='C-classification')
test$preds=predict(model,test[,-5],type='class')

cm=confusionMatrix(test$Species,test$preds)
print(cm$table)
cat("Accuracy = ",cm$overall[1])
