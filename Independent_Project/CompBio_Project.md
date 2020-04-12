# Coral Reef Degredation and Its Correlation to Local Human Populations

## Introduction

Coral reefs around the globe are experiencing mass bleaching events and overall degredation. Coral structures provide habitats for thousands of marine species and create the most biodiverse ecosystem on the planet. Overall, coral reefs provide the primary food source for over 1 billion people world-wide. The main culprits of health decline among coral reefs are climate change and ocean acidification. Some researchers hope that local human impacts pose a greater threat to reefs than climate change and ocean acidification (Bruno and Valdivia 2016).  My main driving questions for this project are: are isolated coral reefs healtheir than those that are close to human settlements and, subsequently, do local imapcts drive coral reef degredation?

<hr>

## Summary of Data to be Analyzed

### Goals of original study that produced the data 
The goal of the initial study was to determine whether local human populations had a substantial effect on coral reefs. They wanted to test to see if isolated reefs, far away from human activity were healthier than those in close proximity to people. If this were deemed to be true, controlling pollution and activity around the reefs at a local level would mitigate coral reef destruction. The scientists who conducted the experiment hypothesized that local pressures only have a small impact on coral reef health, and that climate change and ocean-acidification are the major drivers to bleaching events and overall reef degredation. 

### Brief description of methodology that produced the data
Coral Data: 
1. They performed surveys from 1709 reefs between 1996 and 2006
2. They calculated the percent ocean floor that contained live hard corals and macroalgae by...
	a. taking 10-30cm transects to estimate percent cover
	b. or from digital still images
3. Replicated the experiment by taking multiple measurements at different spots at the reef location or at different depths
4. Results from a site were documented as an average of all test results

Human Population Data:
*  Human population estimates were taken from "the Gridded Population of the World V.3 (GPWv3) " in the year 2005
* Data taken in 2005 because a majority of the coral reef data  (> 80%) were taken during this year
* The researchers chose to use the 50km radius of human population counts for their data analysis 

Data Analysis:
* Used GAMM models to "[alnalyze the relationships of coral and macroalgae cover with human population]([https://www.nature.com/articles/srep29778)" (Bruno and Valdivia 2016)
* Used a [logit]([https://www.theanalysisfactor.com/what-is-logit-function/](https://www.theanalysisfactor.com/what-is-logit-function/)) transformation for the percent cover data 

### Type of data in the data set:  

#### Format of data  
* Data frame
#### Size of data 
* ~ 162 kB
* 1708 lines
* 12 columns: Reef ID number, year the data was taken, subregion, region, microalgae cover, hard coral cover, PSI, longitude, latitude, human population density 100km from reef, human population density 50km from reef, human population density 25km from reef
#### Any inconsistencies in the data files?  Anything that looks problematic?  
* The data set does not appear to have any data inconsistency
#### What the data represent about the biology? 
* The normal coral cover in a reef is typically ~50-75%. When percent cover drops below this range, this indicates a degrading reef
*  High macroalgae cover also indicates a degragading reef




<hr>

## Detailed Description of Analysis to be Done and Challenges Involved

Data Analysis:
1.  Split reefs into 3 groups: high population density at 50km radius, medium population density at 50km radius, and low population density at 50km radius
2.  Take the proportion of microalgae cover to coral cover in these areas
3. Graph these results with a box-plot
4. Perform an ANOVA to test whether the 3 population density groups are significantly different
5. Create an overlaying bar graph of each reef location that shows data on coral cover and algae cover for each location

Challenges
1. Differentiating between the different data points since there are 1708 different locations
2. Creating concise code for a large data set
3. Finding and managing inconsistencies in the data 


<hr>

## References 

Bruno, John F. (2017), Data from: Coral reef degradation is not correlated with 		  local human population density, Dryad, Dataset, [https://doi.org/10.5061/dryad.48r68](https://doi.org/10.5061/dryad.48r68)

Bruno, J. F. and Valdivia, A. Coral reef degradation is not correlated with local human population density. _Sci. Rep._  **6**, 29778; doi: 10.1038/srep29778 (2016).
[https://www.nature.com/articles/srep29778](https://www.nature.com/articles/srep29778)

