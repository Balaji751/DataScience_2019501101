setwd("C:\\DataScience_2019501101\\DataMining\\DM Assignment5")

examsdata <- read.csv("spring2008exams.csv")
str(examsdata)
meandata <- mean(examsdata$Midterm.1, na.rm = TRUE)
sddata <- sd(examsdata$Midterm.1, na.rm = TRUE)
z_score <- (examsdata$Midterm.1 - meandata)/sddata
sort(z_score)

examsdata2 <- read.csv("spring2008exams.csv")
str(examsdata2)

meandata2 <- mean(examsdata$Midterm.2, na.rm = TRUE)
sddata2 <- sd(examsdata$Midterm.2, na.rm = TRUE)
z_score2 <- (examsdata$Midterm.2 - meandata2)/sddata2
sort(z_score2)