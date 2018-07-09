# week 1 reading Excel files
if (!file.exists("C:/Users/wheel/OneDrive/Documents/Justin/Justin/Documents/COURSERA/gettingandcleaning/project/week 1")) {
  dir.create("C:/Users/wheel/OneDrive/Documents/Justin/Justin/Documents/COURSERA/gettingandcleaning/project/week 1")
}
file_URL <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xml?accessType=DOWNLOAD"
download.file(file_URL,destfile = "C:/Users/wheel/OneDrive/Documents/Justin/Justin/Documents/COURSERA/gettingandcleaning/project/week 1/cameras.xlsx", method = "curl")
date_Downloaded <- date()
date_Downloaded
# read.xlsx(), read.xlsx2() {xlsx package}
library(xlsx)
# camera_Data <-
