#downloading files
#Downloading a file from the web
file_URL <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file( file_URL, destfile = "C:/Users/wheel/OneDrive/Documents/Justin/Justin/Documents/COURSERA/gettingandcleaning/week 1/cameras.csv", method = "curl")
list.files("C:/Users/wheel/OneDrive/Documents/Justin/Justin/Documents/COURSERA/gettingandcleaning/week 1")

date_Downloaded <- date()
date_Downloaded
