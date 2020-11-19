examsdata <- read.csv("spring2008exams.csv")
str(examsdata)

q1 = quantile(examsdata$Midterm.2, .25, na.rm = TRUE)
q3 = quantile(examsdata$Midterm.2, .75, na.rm = TRUE)
iqrange <- q3 - q1
iqrange

examsdata[(examsdata$Midterm.2 > q3 + 1.5 * iqrange), 3]

examsdata[(examsdata$Midterm.2 > q1 - 1.5 * iqrange), 3]

boxplot(examsdata$Midterm.1,examsdata$Midterm.2, col="red", main="Exam Scores", names=c("Exam1","Exam 2"), ylab="ExamScore")