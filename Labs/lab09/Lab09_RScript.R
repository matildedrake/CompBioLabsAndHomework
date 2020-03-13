# Lab 09: Parsing Dates and Times from a Real Data File 
########################################################

## Prelim Step
install.packages("lubridate")
library(lubridate)

setwd("EBIO4420/CompBioLabsAndHomework/Labs/lab09")
camData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)

## Problem 1

# look at data
tail(camData)


# convert dates and times into data objects
#separate dates and put into object date

date <- format(as.POSIXct(strptime(camData$DateTime, "%d/%m/%Y %H:%M", tz = "")), format = "%d/%d/%Y")

#separate times and put into object time
time <- format(as.POSIXct(strptime(camData$DateTime, "%d/%m/%Y %H:%M", tz = "")), format = "%H:%M")

# reformate objects date and time into columns of the camData frame
camData$Dates <- date
camData$Times <- time
tail(camData)
# remove the DateTime column
camData$DateTime <- NULL


###################################
## As is problem 2 does not work ##
###################################
## problem 2

tailVec <- tail(camData$Dates)

camData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)

# look at data
tail(camData)


# convert dates and times into data objects
#separate dates and put into object date

# fix issue of years showing up as 2 digit numbers
# if year is orginally stored as 2 digits --> add 2020 infront of the 2 digits
# separate the year and then run through an if statement to change?
if(){
  
}else{
  date <- format(as.POSIXct(strptime(camData$DateTime, "%d/%m/%Y %H:%M", tz = "")), format = "%d/%d/%Y")
}

#separate times and put into object time
time <- format(as.POSIXct(strptime(camData$DateTime, "%d/%m/%Y %H:%M", tz = "")), format = "%H:%M")

# reformate objects date and time into columns of the camData frame
camData$Dates <- date
camData$Times <- time
tail(camData)
# remove the DateTime column
camData$DateTime <- NULL
  










