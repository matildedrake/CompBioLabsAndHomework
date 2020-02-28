 ## Lab 07 Script ##
setwd("~/EBIO4420/CompBioLabsAndHomework/Labs/lab07")

## problem 1
# create a function that calculates the area of a triangle
triangleArea <- function(base = 1, height = 1) {
 # area of a triangle = .5 * base * height
  area <- 0.5 * base * height
  return(area)
}
# test base = 10 and height = 9; (45)
triangleArea(10,9) 

## problem 2: write a function that calculates and returns absolute values
myAbs <- function(value)
  {
    # create a vector to store all the numbers in
    allValues <- rep(0,length(value))
    
    # run through each number to make it absolute
    for( i in 1:length(value))
    {
      # if the value is negative, change to positive and store in allValues
     if(value[i] < 0) 
     {
        allValues[i] <- value[i] * -1
     }else{
       # else, store in allValues
        allValues[i] <- value[i]
      
     }
    }
    # return all the absolute values
    return(allValues)
}

    # test 1: 5
    myAbs(5)
    # test 2: -2.3
    myAbs(-2.3)
    # test 3
    myAbs(c(1.1, 2, 0, -4.3, 9, -12))

## problem 3
##############THIS IS REALLY WRONG; PLEASE FIX; DOESNT WORK FOR ZERO; WHEN ONE STARTS IT INSERTS A 1
# create a function that returns a vector of the first n fibonacci numbers
fibonacci <- function( n , start )
{
  # if user enters zero, a negative, or non-integer number, display an error message
  if(n <= 0)
  {
    return("ERROR: must enter a non-zero integer")
  }
  # write the desired number of fibonacci numbers
  range <- 3:n
  fib <- rep(0,n) # blank vector with size of desired number in the sequence
  fib[1] <- start # make the first value the desired starting number
  fib[2] <- 1 # always is 1
  
   for( i in range)
   {
    #every number after the first two is the sum of the two preceding ones
    fib[i] <- fib[i - 1] + fib[i - 2]
   }
  
  # return the sequence of fib numbers
  return(fib)
}
# test 1:
fibonacci(10,1)
# test 2:
fibonacci(10,0)

## problem 4a: create a function that takes 2 arguments and returns the square differnce
sqDiff <- function( x , y )# takes 2 arguments
{
  # find the difference of the square roots
  ans <- (x - y)^2 
  # return the answer
  return(ans)
}
  # test 1: 
  sqDiff(3,5) # 4

  # test 2:
  sqDiff( c(2,4,6), 4) # 404

## problem 4b: create a function that calculates the average of a vector of numbers
meanVec <- function(vec)
{
  # sum of vec values divided by the vector length
  return( (sum(vec) / length(vec)) ) 
  
}
  # test 1: 
  meanVec(c(5, 15, 10))
  
  # test 2:
  data <- read.csv("DataForLab07.csv")
  meanVec(data$x)

## problem 4c:  
  
  sumSquares <- function( x )
  {
    # calcutate the mean
    meanOfX <- meanVec(x)
   
     # take the square difference of the mean from values of x and then take the sum
    newX <- sum(sqDiff(x , meanOfX))
   
     # return the results
     return(newX)
   
  }
  
  # test 1:
  sumSquares(data$x) # 179442.4
