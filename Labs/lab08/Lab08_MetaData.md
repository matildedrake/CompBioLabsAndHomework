# Lab 08 Meta-data
    
## The Logistic Growth Model
Logistic growth is used as a model for population growth due to the limiting nature of real population growth. The model is presented as an S-shaped curve with a "carrying capacity," where the population levels off at its maximum.

#### Equation:
> n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )

>t = time
r = intrinsic growth rate
K = carrying capacity
n = population size at time t

## Lab 08 Script

Using the [logistic growth equation][logEQ], the script takes user inputted data to calculate population abundances and outputs a graph of population abundances over time.

#### User inputted arguments:
* Intrinsic growth rate ( r )
* Carrying capacity ( K )
* Total number of generations ( endTime )
* Initial population size ( n )

#### Outputs:
1. The data is stored in a two column data frame (_growthDataFrame_)
	a. The first column holds the number of generations while the second column holds the calculated abundances of its respective generation
	b. _growthDataFrame_ is stored as a .csv file which is pushed into the lab08 folder
2.  The function _logGrowth_ produces a graph (Population Abundances Over Time)
a.  x-axis plots time
b. y-axis plots abundances

##  Specific Inputted Data  
Variables Used in "**logGrowth**" Function:
>r = 0.8
K = 10000
endTime = 12
n = 2500
>

[logEQ]:https://en.wikipedia.org/wiki/Logistic_function

