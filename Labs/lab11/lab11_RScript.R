
library("dplyr")
library("ggplot2")

setwd("~/EBIO4420/CompBioLabsAndHomework/Labs/lab11")
data <- read.csv("GlobalWoodDensityDatabase.csv")
data


### Part 2: working with density data ###

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
family_Species_Data <- data %>% group_by(Binomial,Family) %>% summarize(meanDensity = mean(wood.density))
family_Species_Data

## step 6: contrasting most and least dense families

## 6a: create a new data frame with the average density for each family (not the individuals)
family_avg <- summarize(group_by(family_Species_Data,Family), MeanDensity = mean(meanDensity))
family_avg_DF <- as.data.frame(family_avg)

## 6b: sort the results of family_avg in ascending order
family_avg_DF <- family_avg_DF %>% arrange(MeanDensity)
family_avg_DF

## 6c: 
# what are the 8 families with the lowest average densities?
head(family_avg_DF, n = 8)
# Caricaceae, Paulowniaceae, Moringaceae, Bixaceae, Hernandiaceae, Muntingiaceae, Datiscaceae, Tetramelaceae

# what are the 8 families with the highest average densities
tail(family_avg_DF, n = 8)
# Asteropeiaceae, Bonnetiaceae, Linaceae, Surianaceae, Irvingiaceae,Sarcolaenaceae, Zygophyllaceae, Hypericaceae

### Part 3: Plotting ###







