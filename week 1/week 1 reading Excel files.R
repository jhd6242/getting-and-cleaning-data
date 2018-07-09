# week 1 reading Excel files
if (!file.exists("C:/Users/jdecross/Documents/COURSERA/project_1/week 1")) {
  dir.create("C:/Users/jdecross/Documents/COURSERA/project_1/week 1")
}
file_URL <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xml?accessType=DOWNLOAD"
download.file(file_URL, destfile = "C:/Users/jdecross/Documents/COURSERA/project_1/week 1/cameras.xml")
date_Downloaded <- date()
date_Downloaded
# read.xlsx(), read.xlsx2() {xlsx package}
library(readxl)
require(XML)
camera_Data <- xmlParse("C:/Users/jdecross/Documents/COURSERA/project_1/week 1/cameras.xml")
head(camera_Data)
