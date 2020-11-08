
install.packages("caret")
library(caret)
library(rpart.plot)

data_url <- c("http://archive.ics.uci.edu/ml/datasets/Lenses")
download.file(url = data_url, destfile = "lenses.data")

lens = read.csv("lenses.csv", header = FALSE, col.names = c("1", "2", "3", "4", "5", "Label"))


str(lens)
summary(lens)

x = lens[,1:4]
y = as.factor(lens$Label)


model = rpart(y~.,x,control=rpart.control(minsplit=0,minbucket=0,cp=-1, maxcompete=0, maxsurrogate=0, usesurrogate=0, xval=0,maxdepth=5))


plot(model)
text(model)

rpart.plot(model)

#Information Gain
sum(y==predict(model,x,type="class"))/length(y)

#miscalassification error
1-sum(y==predict(model,x,type="class"))/length(y)

#16 % of the data are predicted wrong


model1 = rpart(y~.,x,control=rpart.control(minsplit=0,minbucket=0,cp=-1, maxcompete=0, maxsurrogate=0, usesurrogate=0, xval=0,maxdepth=7))

plot(model1)
text(model1)

rpart.plot(model1)

#Information Gain
sum(y==predict(model1,x,type="class"))/length(y)

#miscalassification error
1-sum(y==predict(model1,x,type="class"))/length(y)

#If tree depth is increased, the mis classification error has decreased and information gain incresed.
