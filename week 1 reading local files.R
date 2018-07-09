#reading local files
#download the file to load

if (!file.exists("C:/Users/wheel/OneDrive/Documents/Justin/Justin/Documents/COURSERA/gettingandcleaning/week 1")) {
  dir.create("C:/Users/wheel/OneDrive/Documents/Justin/Justin/Documents/COURSERA/gettingandcleaning/week 1")
}
file_URL <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file( file_URL, destfile = "C:/Users/wheel/OneDrive/Documents/Justin/Justin/Documents/COURSERA/gettingandcleaning/week 1/cameras.csv", method = "curl")
date_Downloaded <- date()
date_Downloaded
# Baltimore example
# The wrong way
camera_Data <- read.table("C:/Users/wheel/OneDrive/Documents/Justin/Justin/Documents/COURSERA/gettingandcleaning/week 1/cameras.csv")
head(camera_Data)
# Example: Baltimore camera data
# The right way
camera_Data <- read.table("C:/Users/wheel/OneDrive/Documents/Justin/Justin/Documents/COURSERA/gettingandcleaning/week 1/cameras.csv",sep = ",", header = TRUE)
head(camera_Data)
#CSV
camera_Data <- read.csv("C:/Users/wheel/OneDrive/Documents/Justin/Justin/Documents/COURSERA/gettingandcleaning/week 1/cameras.csv")
head(camera_Data)
