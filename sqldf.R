libraries <- c("tidverse", "sqldf", "plotly", "gapminder", "modelr", "bindrcpp")
library(tidyverse)
lapply(libraries, require, character.only = TRUE)

#SQLDF
tips <- data(tips, package = "reshape2")
head(tips)

head(sqldf("SELECT total_bill FROM tips"),1)
head(sqldf("select total_bill from tips"),1)

sqldf("SELECT * from TIPS")                   #WON'T WORK BECAUSE OF "TIPS"

sqldf("SELECT * FROM tips")
sqldf("SELECT total_bill, sex FROM tips")

sqldf("SELECT * FROM tips LIMIT 10")
sqldf("SELECT DISTINCT day FROM tips")

sqldf("SELECT * FROM tips ORDER BY total_bill LIMIT 5")       #ascending
sqldf("SELECT * FROM tips ORDER BY total_bill DESC LIMIT 5")  #descending

sqldf("SELECT * FROM tips ORDER BY day ASC, total_bill DESC LIMIT 10")

sqldf("SELECT * FROM tips WHERE tip > 6")

sqldf("SELECT * FROM tips WHERE day = 'Sat' LIMIT 5")

sqldf("SELECT * FROM tips WHERE day IN ('Sat','Sun') LIMIT 5")
sqldf("SELECT * FROM tips WHERE day='Sat' OR day='Sun' LIMIT 10")

sqldf("SELECT * FROM tips WHERE day NOT IN ('Sat', 'Sun') LIMIT 5")

sqldf("SELECT * FROM tips WHERE size > 5 AND tip > 5")
sqldf("SELECT * FROM tips WHERE size > 5 OR  tip > 5")

sqldf("SELECT * FROM tips WHERE NOT size > 1")

sqldf("SELECT * FROM tips WHERE (size > 5 AND tip < 5.01) OR total_bill > 45")

sqldf("SELECT AVG(total_bill) FROM tips")

sqldf("SELECT sex, AVG(tip) AS mean_tip FROM tips GROUP BY sex")

sqldf("SELECT COUNT() AS number_rows FROM tips")