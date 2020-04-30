# Coral Reef Degredation and Its Correlation to Local Human Populations

### [](https://github.com/flaxmans/CompBio_on_git/blob/master/Assignments/09_Independent_Project_Step2.md#biological-question)Biological question

Are isolated coral reefs healtheir than those that are close to human settlements and, subsequently, do local imapcts drive coral reef degredation?

### [](https://github.com/flaxmans/CompBio_on_git/blob/master/Assignments/09_Independent_Project_Step2.md#context-introduction)Context (introduction)

Coral reefs around the globe are experiencing mass bleaching events and overall degredation. High coral cover and low macroalgae cover are indicators of a healthy coral reef; a normal coral cover is typically ~50-75%, when percent cover drops below this range this indicates a degrading reef [(Bruno and Valdivia 2016)][degredation]. Coral structures provide habitats for thousands of marine species and are the most biodiverse ecosystem on the planet [(Ross 2018)][life]. Through food, fisheries, and tourism, they provide $30 billion towards the world economy [(Ross 2018)][life]. The main culprits of health decline among coral reefs are climate change and ocean acidification. Some researchers hope that local human impacts pose a greater threat to reefs than climate change and ocean acidification [(Bruno and Valdivia 2016)][degredation]. 

### [](https://github.com/flaxmans/CompBio_on_git/blob/master/Assignments/09_Independent_Project_Step2.md#methods)Methods

##### [](https://github.com/flaxmans/CompBio_on_git/blob/master/Assignments/09_Independent_Project_Step2.md#the-source-of-the-data)The source of the data:

Data description:
* Data set taken from [Dryad](https://doi.org/10.5061/dryad.48r68)
* From the research article [_Coral reef degradation is not correlated with local human population density_](https://www.nature.com/articles/srep29778) (Bruno 2017)
* ~ 162 kB
* 1708 lines
* 12 columns: Reef ID number, year the data was taken, subregion, region, microalgae cover, hard coral cover, PSI, longitude, latitude, human population density 100km from reef, human population density 50km from reef, human population density 25km from reef

Data Collection:

To collect the data, researchers performed surveys from 1709 reefs between 1996 and 2006. They calculated the percent ocean floor that contained live hard corals and macroalgae by taking 10-30cm transects to estimate percent cover or from digital still images. Researchers replicated the experiment by taking multiple measurements at different spots at the reef location or at different depths. Results from a site were documented as an average of all test results. 

Human population estimates were taken from "the Gridded Population of the World V.3 (GPWv3) " in the year 2005 [(Bruno 2017)](https://doi.org/10.5061/dryad.48r68). The data taken in 2005 because a majority of the coral reef data  (> 80%) were taken during this year. Researchers chose to use the 50km radius of human population counts for their data analysis. 





##### [](https://github.com/flaxmans/CompBio_on_git/blob/master/Assignments/09_Independent_Project_Step2.md#what-the-original-authors-did-with-the-data)What the original authors did with the data:

For data analysis, they used GAMM models to "[alnalyze the relationships of coral and macroalgae cover with human population]([https://www.nature.com/articles/srep29778)" (Bruno and Valdivia 2016) and used a [logit]([https://www.theanalysisfactor.com/what-is-logit-function/](https://www.theanalysisfactor.com/what-is-logit-function/)) transformation for the percent cover data. They also created scatter plots of macroalgae cover vs population density with 50km radius from site and hard coral cover vs population density and histograms of this data for sites that had 0 population density.

##### [](https://github.com/flaxmans/CompBio_on_git/blob/master/Assignments/09_Independent_Project_Step2.md#what-you-did-with-the-data-and-how-you-did-it)What  _YOU_  did with the data and how you did it:

I imported the data from from [Dryad][data] and created a new data frame with the columns of data for macroalgae cover, hard coral cover, population density with 50km radius from site, and general region. I then created two linear regressions of macroalgae cover vs populaiton density and hard coral cover vs population density, distinguishing regions by color and creating multiple regression lines by region. I subsequently subsetted the data by region to get the p-values and R^2 from the linear regressions of each region. The diffference between my scatterplots and the original study were that I used a linear regression model of the regions while they used a GAMM model of the overall subregions.

### [](https://github.com/flaxmans/CompBio_on_git/blob/master/Assignments/09_Independent_Project_Step2.md#results-and-conclusions)Results and conclusions


![graph of coral and algae data](https://raw.githubusercontent.com/matildedrake/CompBioLabsAndHomework/master/Independent_Project/coralPlot.jpeg)

Linear Regression Results: 
* Great Barrier Reef: significant decline of hard coral cover (p-value = 0.002666 < 0.05) and increase in macroaglae cover (p-value = 0.02544 < 0.05 )
* Greater Caribbean: significant decrease in coral cover (p-value = 0.02307 < 0.05), but not significant data for macroaglae (p-value = .262 > 0.05)
* Indo-Pacific: significant decline in coral cover (p-value = 0.01342 < 0.05), but insignificant macroalgae decrease (p-value = 0.06156 > 0.05)
* Florida Keys: not statistically significant for either hard coral cover (p-value = 0.26 > 0.05) or macroalgae ( p-value = .06156 > 0.05)

Interpretation:

* Three out of the four regions (exception of Florida Keys) experienced at least one increased marker of coral reef degredation (decrease in hard coral cover and increase in macroalgae cover) as population density increased
* The habits of these populations and how they interact with the reefs (via pollution, fishing, or direct contact) could be a factor in this
* This could mean that local human intervention could help save some coral reefs, based on the region




### [](https://github.com/flaxmans/CompBio_on_git/blob/master/Assignments/09_Independent_Project_Step2.md#references-cited)References Cited

Bruno, John F. (2017), Data from: Coral reef degradation is not correlated with local human population density, Dryad, Dataset, [https://doi.org/10.5061/dryad.48r68](https://doi.org/10.5061/dryad.48r68)

Bruno, J. F. and Valdivia, A. Coral reef degradation is not correlated with local human population density. _Sci. Rep._  **6**, 29778; doi: 10.1038/srep29778 (2016).
[https://www.nature.com/articles/srep29778](https://www.nature.com/articles/srep29778)

Ross, R. (2018, September 24). What Are Coral Reefs [https://www.livescience.com/40276-coral-reefs.html](https://www.livescience.com/40276-coral-reefs.html)

[data]: (https://doi.org/10.5061/dryad.48r68)
[degredation]: (https://www.nature.com/articles/srep29778)
[life]: (https://www.livescience.com/40276-coral-reefs.html)
