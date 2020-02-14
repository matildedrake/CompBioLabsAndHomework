## Lab 04: for loops

## step 1:
# for loop that prints "hi" to the consol 10 times
hi_range <- 1:10
for( i in hi_range)
{
  print("hi")
}

## step 2:
# how much money tim has each week for 8 weeks
balance <- 10 # tim starts with 10 dollars
allowance <- 5 # each week his parents give him $5
twoGumCost <- 2.0*(1.34) # tim spends $(2*1.34) on gum per week
weeks <- 1:8 # range of weeks

# print how much balance he has at the end of each week for 8 weeks
for(i in weeks) 
{
  balance <- (balance + allowance - twoGumCost) # create new sum balance 
  print(balance)
}

## step 3:
popDecrease <- .05 # population will shrink by 5% each year
popSize <- 2000# current population size = 2000
# what is the expected pop size each year for the next7 years?
years <- 1:7 # range of years

for(i in years) 
{
  # new popSize is the population size - 5 percent of the population
  popSize <- popSize - (popSize * popDecrease) 
  
  print(popSize) # print the popSize at the end of the year
}

## step 4:
# logistic growth eq: n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
# what is the value for n[12]?

r <- 0.8 # the intrinsic growth rate of the poplutation
K <- 10000 # the environmental carrying capacity
n <- 2500 # abundance of population at time t
endTime <- 12 # twelve years
time <- 1:endTime

# print the initial abundance
print(n) 


# print abundance for 12 years
for(i in 2:endTime) 
{
  # push in the abundance for each year
  n[i] = n[i-1] + ( r * n[i-1] * (K - n[i-1])/K ) # logistic growth equation
  print(n[i])
}


## step 5:

vecLength <- 18 # vector size

# 5a: make a vector of 18 zeros
vec <- rep(0,vecLength)
vec

# 5b: store 3 times the i value in the ith spot of the vector
for( i in 1:vecLength)
{
  vec[i] <- i*3 # 3 times i
  print(vec[i]) # print resulting vector
}

# 5c: make a vector of 1 and 17 zeros
vec2 <- rep(0,vecLength) # fill vector with all zeros
vec2[1] <- 1 # change first spot to 1
vec2

# 5d: vec2: one plus twice the calue of the previous entry
for(i in 2:vecLength)
{
  vec2[i] <- (2* vec2[i - 1]) + 1
}
print(vec2) # check answer

## step 6:

# write the first 20 fibonacci numbers starting with zero
range <- 3:20
fib <- 0 # first index of fib 
fib[2] <- 1 # second index of fib
for( i in range)
{
  #every number after the first two is the sum of the two preceding ones
  fib[i] <- fib[i - 1] + fib[i - 2]
}
# print out the first 20 fibonacci numbers
print(fib) 

## step 7:
# data stored in step 4

# store vector of abundances as "abundance"
abundance <- n

# plot the time and abundance
plot(time, abundance)

## step 8a: 
# set working directory
setwd("~/EBIO4420/CompBioLabsAndHomework/Labs/lab04/")
# read data into RStudio
data <- read.csv("CO2_data_cut_paste.csv")
data
## step 8b:
# convert data to numeric values
for( i in 2:8)
{
  data[,i] <- as.numeric(data[,i])
}

## step 8c:
# calculate the percent change from year to year

# colRange <- 2:5 # range of columns, excluding years
# rowRange <- 1:125 #range of rows in data set
# totalP <- 3 # vector of total percentages from year to year
# gasP <- 0 # vector of gas percentages from year to year
# liquidsP <- 0 # vector of liquid percentages from year to year
# solidsP <- 3 # vector of solid percentages from year to year

# percent[1,1] <- 1 # matrix of percentages

#for( i in rowRange )
#{
#for( ii in colRange)
#{
  # to get the percent difference...
#  difference <- data[i,ii] - data[i,ii -1] # find the difference between the two years
#  average <- (data[i,ii] + data[i,ii-1])/2 # find the average between the two years
#  percent[i,ii] <- (difference / average) * 100 # divide the difference over the average and multiply by 100 to get the percentage
#}
#}


