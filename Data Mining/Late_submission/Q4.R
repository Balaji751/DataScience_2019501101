getwd()
setwd("C:\\DataScience_2019501101\DataMining\Exam\Late_submission")

liver = read.csv("Liver_data.csv", header = FALSE, col.names = c("mcv", "alkphos", "sgpt", "sgot", "gammagt", "drinks","selector"))

liver$selector <- as.factor(liver$selector)

liver$drinks <- cut(liver$drinks, breaks = c(0, 5,10,15,20), 
                    labels = c('C1', 'C2', "C3", 'C4'), right = FALSE)

liver <- na.omit(liver)


train = subset(liver, liver$selector == 1)

str(train)

test = subset(liver, liver$selector == 2)

str(test)

dim(train)
dim(test)

x_train <- subset(train, select = -c(selector, drinks))
x_test <- subset(test, select = -c(selector, drinks))

library(class)

y_train = train[,6, drop = TRUE]
y_test = test[,6, drop = TRUE]


length(train)

length(test)



fit1 = knn(x_train,x_train,y_train,k=1)  
1-sum(y_test==fit1)/length(y_test)   

fit2 = knn(x_train,x_train,y_train,k=2)
1-sum(y_test==fit2)/length(y_test)



fit3 = knn(x_train,x_train,y_train,k=3)
1-sum(y_test==fit3)/length(y_test)