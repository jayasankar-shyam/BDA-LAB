library(MASS)
library(caret)
library(rpart)
library(rpart.plot)
data(biopsy)
set.seed(123)

split=createDataPartition(biopsy$class,p=.8,times=1,list=F)
train=biopsy[split,-1]
test=biopsy[-split,-1]

model=rpart(class~V1+V3+V5,data=train,method='class')
rpart.plot(model)

preds=predict(model,test,type='class')
cm=confusionMatrix(test$class,preds)
print(cm$table)
cat("Accuracy = ",cm$overall[1])
