data = read.csv("apriori_data.csv", header = TRUE);
View(data)
data$TID <- NULL
library(arules)

write.csv(data, "ItemList.csv", quote = FALSE, row.names = TRUE)
transactions = read.transactions("ItemList.csv", sep=',', rm.duplicates = TRUE)
inspect(transactions)

frequent_itemsets <- apriori(transactions, parameter = list(sup = 0.03, conf = 0.5,target="frequent itemsets"))