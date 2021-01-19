getwd()
setwd("C:\DataScience_2019501101\DataMining\Exam\Late_submission")

stock = read.csv("BSE_Sensex_Index.csv",header = FALSE)
str(stock)

summary(stock)

stock$diffV2 <- c(0, diff(stock$V2))
stock$diffV3 <- c(0, diff(stock$V3))
stock$diffV4 <- c(0, diff(stock$V4))
stock$diffV5 <- c(0, diff(stock$V5))
stock$diffV6 <- c(0, diff(stock$V6))
stock$diffV7 <- c(0, diff(stock$V7))

summary(stock)
str(stock)


sample1 = sample(seq(1,length(stock$V2)),1000,replace = T)
sample2 = sample(seq(1,length(stock$V2)),3000,replace = T)



sampleV2_1 = stock[sample1,8]
mean(sampleV2_1)
max(sampleV2_1)
var(sampleV2_1)
quantile(sampleV2_1,.25)

sampleV2_2 = stock[sample2,8]
mean(sampleV2_2)
max(sampleV2_2)
var(sampleV2_2)
quantile(sampleV2_2,.25)

sampleV3_1 = stock[sample1,9]
mean(sampleV3_1)
max(sampleV3_1)
var(sampleV3_1)
quantile(sampleV3_1,.25)

sampleV3_2 = stock[sample2,9]
mean(sampleV3_2)
max(sampleV3_2)
var(sampleV3_2)
quantile(sampleV3_2,.25)


sampleV4_1 = stock[sample1,10]
mean(sampleV4_1)
max(sampleV4_1)
var(sampleV4_1)
quantile(sampleV4_1,.25)

sampleV4_2 = stock[sample2,10]
mean(sampleV4_2)
max(sampleV4_2)
var(sampleV4_2)
quantile(sampleV4_2,.25)


sampleV5_1 = stock[sample1,11]
mean(sampleV5_1)
max(sampleV5_1)
var(sampleV5_1)
quantile(sampleV5_1,.25)

sampleV5_2 = stock[sample2,11]
mean(sampleV5_2)
max(sampleV5_2)
var(sampleV5_2)
quantile(sampleV5_2,.25)

sampleV6_1 = stock[sample1,12]
mean(sampleV6_1)
max(sampleV6_1)
var(sampleV6_1)
quantile(sampleV6_1,.25)

sampleV6_2 = stock[sample2,12]
mean(sampleV6_2)
max(sampleV6_2)
var(sampleV6_2)
quantile(sampleV6_2,.25)


sampleV7_1 = stock[sample1,13]
mean(sampleV7_1)
max(sampleV7_1)
var(sampleV7_1)
quantile(sampleV7_1,.25)

sampleV7_2 = stock[sample2,13]
mean(sampleV7_2)
max(sampleV7_2)
var(sampleV7_2)
quantile(sampleV7_2,.25)

mean(stock$diffV2)
max(stock$diffV2)
var(stock$diffV2)
quantile(stock$diffV2,.25)
abs(mean(sampleV2_1)-mean(stock$diffV2))
abs(max(sampleV2_1)-max(stock$diffV2))
abs(var(sampleV2_1)-var(stock$diffV2))
abs(quantile(sampleV2_1,.25)-quantile(stock$diffV2,.25))


abs(mean(sampleV2_2)-mean(stock$diffV2))
abs(max(sampleV2_2)-max(stock$diffV2))
abs(var(sampleV2_2)-var(stock$diffV2))
abs(quantile(sampleV2_2,.25)-quantile(stock$diffV2,.25))


mean(stock$diffV3)
max(stock$diffV3)
var(stock$diffV3)
quantile(stock$diffV3,.25)
abs(mean(sampleV3_1)-mean(stock$diffV3))
abs(max(sampleV3_1)-max(stock$diffV3))
abs(var(sampleV3_1)-var(stock$diffV3))
abs(quantile(sampleV3_1,.25)-quantile(stock$diffV3,.25))


abs(mean(sampleV3_2)-mean(stock$diffV3))
abs(max(sampleV3_2)-max(stock$diffV3))
abs(var(sampleV3_2)-var(stock$diffV3))
abs(quantile(sampleV3_2,.25)-quantile(stock$diffV3,.25))


mean(stock$diffV4)
max(stock$diffV4)
var(stock$diffV4)
quantile(stock$diffV4,.25)
abs(mean(sampleV4_1)-mean(stock$diffV4))
abs(max(sampleV4_1)-max(stock$diffV4))
abs(var(sampleV4_1)-var(stock$diffV4))
abs(quantile(sampleV4_1,.25)-quantile(stock$diffV4,.25))


abs(mean(sampleV4_2)-mean(stock$diffV4))
abs(max(sampleV4_2)-max(stock$diffV4))
abs(var(sampleV4_2)-var(stock$diffV4))
abs(quantile(sampleV4_2,.25)-quantile(stock$diffV4,.25))


mean(stock$diffV5)
max(stock$diffV5)
var(stock$diffV5)
quantile(stock$diffV5,.25)
abs(mean(sampleV5_1)-mean(stock$diffV5))
abs(max(sampleV5_1)-max(stock$diffV5))
abs(var(sampleV5_1)-var(stock$diffV5))
abs(quantile(sampleV5_1,.25)-quantile(stock$diffV5,.25))


abs(mean(sampleV5_2)-mean(stock$diffV5))
abs(max(sampleV5_2)-max(stock$diffV5))
abs(var(sampleV5_2)-var(stock$diffV5))
abs(quantile(sampleV5_2,.25)-quantile(stock$diffV5,.25))
mean(stock$diffV6)
max(stock$diffV6)
var(stock$diffV6)
quantile(stock$diffV6,.25)
abs(mean(sampleV6_1)-mean(stock$diffV6))
abs(max(sampleV6_1)-max(stock$diffV6))
abs(var(sampleV6_1)-var(stock$diffV6))
abs(quantile(sampleV6_1,.25)-quantile(stock$diffV6,.25))


abs(mean(sampleV6_2)-mean(stock$diffV6))
abs(max(sampleV6_2)-max(stock$diffV6))
abs(var(sampleV6_2)-var(stock$diffV6))
abs(quantile(sampleV6_2,.25)-quantile(stock$diffV6,.25))
mean(stock$diffV7)
max(stock$diffV7)
var(stock$diffV7)
quantile(stock$diffV7,.25)
abs(mean(sampleV7_1)-mean(stock$diffV7))
abs(max(sampleV7_1)-max(stock$diffV7))
abs(var(sampleV7_1)-var(stock$diffV7))
abs(quantile(sampleV7_1,.25)-quantile(stock$diffV7,.25))


abs(mean(sampleV7_2)-mean(stock$diffV7))
abs(max(sampleV7_2)-max(stock$diffV7))
abs(var(sampleV7_2)-var(stock$diffV7))
abs(quantile(sampleV7_2,.25)-quantile(stock$diffV7,.25))

boxplot(stock$diffV2,
        stock$diffV3,
        stock$diffV4,
        stock$diffV5,
        stock$diffV6,
        stock$diffV7
        ,col = 'blue', main = 'Boxplot', names=c("Open","High", "Low", "Close", "volume", "adj"))
stock$c = as.numeric(stock$V4)

hist(stock$c,breaks=seq(0,20000,by=2000),col='blue',xlab = "Close",ylab = "Frequency",main = "Histogram Plot")