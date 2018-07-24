
# getting into cleaning data quiz 1
# Question 1
# The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:
# https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv
# and load the data into R. The code book, describing the variable names is here:
# https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf
# How many properties are worth $1,000,000 or more?

library(data.table)

library(data.table)
housing <- data.table::fread("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv")
head(housing)

housing[VAL == 24,.N]

# Question 2
# Use the data you loaded from Question 1. Consider the variable FES in the code book. Which of the "tidy data" principles does this variable violate?
# Tidy data has one variable per column

# Question 3
# Download the Excel spreadsheet on Natural Gas Aquisition Program here:

# https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx

# Read rows 18-23 and columns 7-15 into R and assign the result to a variable called:

# dat

# What is the value of:

# sum(dat$Zip*dat$Ext,na.rm=T)
library(xlsx)
file_URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
# need the mode set
download.file(file_URL, destfile = "~/COURSERA/project_1/week 1/excel.xlsx", mode='wb')

dat <- xlsx::read.xlsx(file = "~/COURSERA/project_1/week 1/excel.xlsx", sheetIndex = 1, rowIndex = 18:23, colIndex = 7:15)
sum(dat$Zip*dat$Ext,na.rm=T)

# Question 4
# Read the XML data on Baltimore restaurants from here:

# https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml

# How many restaurants have zipcode 21231?

library(XML)

file_URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
download.file(file_URL, "~/COURSERA/project_1/week 1/question4.xml")
doc <- xmlTreeParse("~/COURSERA/project_1/week 1/question4.xml",useInternal=TRUE)
root_Node <- xmlRoot(doc)
zips <- xpathSApply(root_Node,"//zipcode",xmlValue)
length(zips[which(zips == "21231")])

# The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

# https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv

# using the fread() command load the data into an R object

library(XML)

file_URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
download.file(file_URL, "~/COURSERA/project_1/week 1/question4.xml")
doc <- xmlTreeParse("~/COURSERA/project_1/week 1/question4.xml",useInternal=TRUE)
root_Node <- xmlRoot(doc)
zips <- xpathSApply(root_Node,"//zipcode",xmlValue)
length(zips[which(zips == "21231")])

library(data.table)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", destfile ="~/COURSERA/project_1/week 1/question5.csv")
DT <- fread(input = "~/COURSERA/project_1/week 1/question5.csv",sep=",")

system.time(mean(DT[DT$SEX==1,]$pwgtp15)) + system.time(mean(DT[DT$SEX==2,]$pwgtp15))

system.time(tapply(DT$pwgtp15,DT$SEX,mean))

system.time(mean(DT$pwgtp15,by=DT$SEX))

system.time(DT[,mean(pwgtp15),by=SEX])

system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
