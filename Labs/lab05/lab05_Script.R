## lab05

## part 1:
## problem 1:

# create variable x
x <- 1 
# check value of x relative to 5
if(x > 5)
{
  print( "x is greater than 5")
}
if (x < 5)
{
  print( "x is less than 5")
}else{ # if x is equal to 5
  print("x is equal to 5")
}

## problem 2:

# download example data
getwd()
setwd("~/EBIO4420/CompBioLabsAndHomework/Labs/lab05")

# set example data to variable data
data <- read.csv("ExampleData.csv") 

# change into a vector to make things easier
dataVec <- data[[1]]

## problem 2.a:
# check each value of dataVec and change every negative to NA
for( i in 1:length(dataVec))
{
  if(dataVec[i] < 0)
  {
    dataVec[i] <- NA
  }
}

## problem 2.b:
# use logical indexing to change all NA to NaN
dataVec[is.na(dataVec)] <-NaN

## problem 2.c:
# using a which() statement, change all NaN values with 0
nanByeBye <- which(is.nan(dataVec))
dataVec[nanByeBye] <- 0

## problem 2.d:
# determine how many values fall in the range between 50 and 100

range <- 0 # number of values
for(i in 1:length(dataVec))
{
  #increase the number of values in range each time a data point in dataVec is within 50-100
  if(dataVec[i] >= 50 & dataVec[i] <= 100) # check the range
  {
    range <- range + 1 
  }
}

## problem 2.e:
# create a new vector with all the data points in the range of 50-100 from dataVec

# create new vector with size of the number of data points that range from 50-100
FiftyToOneHundred <- rep(0,range) 
range <- 0
for(i in 1:length(dataVec))
{
  if(dataVec[i] >= 50 & dataVec[i] <= 100) # check the range
  {
    range <- range + 1
    FiftyToOneHundred[range] <- dataVec[i] # push float into new data
  }
}

## problem 2.f:
# save vector to file name FiftyToOneHundred.csv
write.csv(x = FiftyToOneHundred, file = "FiftyToOneHundred.csv")

## problem 3:

# import CO2_data_cut_paste.csv from lab04
setwd("~/EBIO4420/CompBioLabsAndHomework/Labs/lab04")
CO2Data <- read.csv("CO2_data_cut_paste.csv")

## problem 3a: what was the first year for which data on "gas" emissions were on-zero?

# make vector of indexes where Gas emissions are not zero
nonZeroGas <- which(CO2Data$Gas != 0) 
# find the first non zero year using this index in the CO2 data frame
firstNonZero <- CO2Data[nonZeroGas[1],"Year"]
firstNonZero # check that the year is correct

## problem 3b: during which years were "Total" emissions between 200 and 300 million metric tons of carbon?

# make vector of indexes where total emissions are between 200 and 300
totalBetweenInd <- which((CO2Data$Total > 200) & (CO2Data$Total < 300))
# find the years of these indexes
totalBetweenYear <- CO2Data[totalBetweenInd,"Year"]
totalBetweenYear # check that the years are correct

## part 2: loops + conditionals + biology
## calculate the abundances of predators and prey over time according to the lotka-colterra model

#n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1]) # abundance of prey at time t
#p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1]) # abundance of predators at time t

totalGenerations <- 1000
initPrey <- 100 	# initial prey abundance at time t = 1
initPred <- 10		# initial predator abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators


time <- seq(1, totalGenerations, by=1) # vector of time steps from 1 to total generations
n <- rep(0,totalGenerations) # vector of values of n at each generation
n[1] <- initPrey # insert initial prey abundance at time t = 1
p <- rep(0,totalGenerations) # vector of values of p at each generation
p[1] <- initPred # insert initial predator abundance at time t = 1

for( i in 2:totalGenerations)
{
  # lotka-volterra calculation
  n[i] <- n[i-1] + (r * n[i-1]) - (a * n[i-1] * p[i-1]) # abundance of prey at time t
  p[i] <- p[i-1] + (k * a * n[i-1] * p[i-1]) - (m * p[i-1]) # abundance of predators at time t
  
  # if the prey value is negative, set it to zero
  if (n[i] < 0)
  {
    n[i] <- 0 
  }
  # if the predator value is negative, set it to zero
  if(p[i] < 0)
  {
    p[i] <- 0
  }
 
}

# create a plot of abundances of prey and predators over time
plot(time, n, xlab = "Generations/Time", ylab = "Prey and Predator Abundances", main = "Predator and Prey Abundances Over Time", col = "blue") # prey show up as blue
par(new = T)
plot(time, p, col = "red") # predators show up as red

#create matrix of results 
myResults <- matrix(nrow = totalGenerations, ncol = 3) # three columns for TimeStep, PreyAbundance, PredatorAbundance
myResults[,1] <- time # insert time data for first column
myResults[,2] <- n # insert prey abundances for second column
myResults[,3] <- p # insert predator abundances for third column
# name the columns
myNames <- c("TimeStep", "PreyAbundance", "PredatorAbundance")
colnames(myResults) <- myNames  


# write matrix into a .csv
write.csv(x = myResults, file = "PredPreyResults.csv")

s <- read.csv("PredPreyResults.csv")



