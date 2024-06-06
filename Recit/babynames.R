library(sqldf)
data <- read.csv("https://raw.githubusercontent.com/shriyaa01/Student-Result-Analysis/main/Expanded_data_with_more_features.csv")

sqldf("SELECT Gender, ParentEduc, PracticeSport AS Sport, TransportMeans AS Transportation FROM data LIMIT 8")

sqldf("SELECT COUNT (DISTINCT MathScore) AS Distinct_Math FROM data")

install.packages("babynames")
library("babynames")

sqldf("SELECT *
      FROM data
      ORDER BY ReadingScore DESC
      LIMIT 10")

sqldf("SELECT ((ReadingScore + MathScore)/2) AS MeanMathRead
      FROM data
      ORDER BY MeanMathRead DESC
      LIMIT 80")

#BabyNames

library(babynames)
head(babynames)
sqldf("SELECT COUNT(DISTINCT name)
      FROM babynames
      WHERE sex == 'F' AND year == 1999")

sqldf("SELECT DISTINCT name
      FROM babynames
      WHERE year == 1914 AND sex == 'M'
      ORDER BY name
      LIMIT 10")

sqldf("SELECT COUNT(name)
      FROM babynames
      WHERE name == 'Adolf' AND year > 1945")

sqldf("SELECT year, sex, name
      FROM babynames
      WHERE name LIKE 'Ben%'
      LIMIT 5")

sqldf("SELECT year, n
      FROM babynames
      WHERE name == 'Adolf' AND year > 1945
      ORDER BY year DESC
      ")

sqldf("SELECT SUM(n)
      FROM babynames
      WHERE name == 'Adolf' AND year > 1945
      ")
sqldf("SELECT SUM(n) as num_of_Adolfs
      FROM babynames
      WHERE name == 'Adolf'
      ")

sqldf("SELECT year, sex, name
      FROM babynames
      WHERE name LIKE '%ert%'
      LIMIT 5")

sqldf("SELECT DISTINCT name
      FROM babynames
      WHERE year == 2008 AND prop BETWEEN 0.005 AND 0.01")


myNames = c('Coleman', 'Anna', 'Victoria', 'Margaret') #SOR
sqldf("SELECT name, prop
      FROM babynames
      WHERE name IN myNames")