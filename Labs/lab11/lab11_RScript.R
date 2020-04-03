
library("dplyr")

setwd("~/EBIO4420/CompBioLabsAndHomework/Labs/lab11")
data <- read.csv("GlobalWoodDensityDatabase.csv")
data


## Part 2: working with density data

## step 4: removing rows with mising data
colnames(data)[4] <- "wood.density" # rename fourth column name

## 4a: which row is it?
delete <- which(is.na(data$wood.density)) # find the row of no data

## 4b: remove the row
data <- data[-delete,]

## step 5: dealing with one kind of pseudo-replication

# find counts of each species
speciesCounts <- summarise(group_by(data,Binomial), myFreq = n() )
speciesCounts

# create a new data frame with the family, binomial and density
familyData <- data %>% group_by(Binomial,Family) %>% summarize(meanDensity = mean(wood.density))
familyData



