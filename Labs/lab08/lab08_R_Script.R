setwd("~/EBIO4420/CompBioLabsAndHomework/Labs/lab08")

## create a function for the logistic growth model
  # arguments: r (intrinsic growth rate), K(carrying capacity), total number of generations, initial population size
logGrowth <- function(r, K, endTime, n){
  # logistic growth eq: n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
  # what is the value for n[12]?

  # range of generations
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
  
  # store vector of abundances as "abundance"
  abundance <- n
  
  # plot the time and abundance
  plot(time, abundance)
  
  # Write a line(s) of code that writes the data set to a file (also in your Lab08 directory). 
  # The data file should have two columns: the first column should be "generations", and the second column should be "abundance".
  growthDataFrame <- data.frame(time, abundance)
  colnames(growthDataFrame)[1] <- "Generations"
  colnames(growthDataFrame)[2] <- "Abundance"
  
  # save the data frame of generations and abundances to a .csv file in the lab08 folder
  write.csv(growthDataFrame, "generation_abundances.csv")
  
}

## test
logGrowth(.8, 10000, 12, 2500)





