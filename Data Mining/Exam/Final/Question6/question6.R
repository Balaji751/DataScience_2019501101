getwd()
setwd("C:\DataScience_2019501101\DataMining\Exam\Final")


liver = read.csv("Liver_data.csv", header = FALSE, col.names = c("1", "2", "3", "4", "5", "6", "7"))


str(liver)
summary(liver)

x<-liver[,1:2]

plot(x,pch=19,xlab=expression(x[1]),ylab=expression(x[2]))

fit<-kmeans(x, 4)
points(fit$centers,pch=19,col="blue",cex=2)

library(class)
knnfit<-knn(fit$centers,x,as.factor(c(-1,1)))
points(x,col=1+1*as.numeric(knnfit),pch=19)