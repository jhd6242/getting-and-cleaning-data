# 1. Question 1
# The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

# https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv

# and load the data into R. The code book, describing the variable names is here:

# https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf

# Create a logical vector that identifies the households on greater than 10 acres who sold more than $10,000 worth of agriculture products. Assign that logical vector to the variable agricultureLogical. Apply the which() function like this to identify the rows of the data frame where the logical vector is TRUE.

# which(agricultureLogical)

file_URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
destination <- "~/COURSERA/project_1/week 1/question1.csv"
download.file(file_URL, destination)

data_1 <- read.csv(destination)

agricultureLogical = data_1$ACR == 3 & data_1$AGS == 6

head(which(agricultureLogical), 3)
library(jpeg)

file_URL2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
destination2 <- "~/COURSERA/project_1/week 1/question2.jpg"
download.file(file_URL2,destination2, mode = 'wb')
data_2 <- readJPEG(destination2, native =TRUE)
quantile(data_2, probs = c(0.3, 0.8))

library(data.table)
library(dplyr)
library(Hmisc)
file_URL3 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
destination3 <- "~/COURSERA/project_1/week 1/question 3.csv"
file_URL4 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
destination4 <- "~/COURSERA/project_1/week 1/question 3b.csv"

download.file(file_URL3, destination3)
download.file(file_URL4, destination4)
GDP <- fread(destination3, skip = 4, nrow = 190, select = c(1, 2, 4, 5), col.names=c("CountryCode", "Rank", "Economy", "Total"))
EDU <- fread(destination4)
merge = merge(GDP, EDU, by = 'CountryCode')
nrow(merge)
var <- arrange(merge, desc(Rank))

var[12, 'Economy']

tapply(merge$Rank, merge$'Income Group', mean)

merge$RankGroups <- cut2(merge$Rank, g = 5)
table(merge$RankGroups, merge$'Income Group')
select(cran, r_arch:country)
