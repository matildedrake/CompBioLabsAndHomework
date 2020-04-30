#### Independent Project: Coral Reef Degredation ####

require("dplyr")
require("ggplot2")
require("tidyverse")
install.packages("cowplot")
require("cowplot")

# set working directory
  setwd("~/EBIO4420/CompBioLabsAndHomework/Independent_Project/")

##########################################
##### Setting and Examining the Data #####
##########################################

# import the data set to view it
  data <- as.data.frame(read.csv("World+human.csv"), stringsAsFactors = FALSE)

# look at the first ten and last ten lines
  head(data, n = 10)
  tail(data, n = 10)
  summary(data) # why does it say 0 columns and 1 row

# create a new data frame with the  REGION_PS, MACROALGAE, HARD_CORAL, human50km (5 columns)
  coralData <- data.frame(data$REGION_PS, data$MACROALGAE, data$HARD_CORAL, data$human50km)

# rename the columns
  names(coralData) <- c("Region","Macroalgae_Cover","Hard_Coral_Cover","Population_Density_50km")
  # check the head and tail
    head(coralData, n = 10)
    tail(coralData, n = 10)

# reorder data based on "Population_Density_50km" from low to high
  coralData <- arrange(coralData, Population_Density_50km)

# calculate the mean, median, mode, max, and low for: Macroalgae_Cover, Hard_Coral_Cover, Population_Density_50km
  summary(coralData)
  ## results: 
    # Macroalgae_Cover Hard_Coral_Cover Population_Density_50km
    # Min.   : 0.00    Min.   :  0.00   Min.   :       0       
    # 1st Qu.: 3.10    1st Qu.: 13.10   1st Qu.:   20800       
    # Median :10.00    Median : 24.45   Median :   78070       
    # Mean   :15.13    Mean   : 27.57   Mean   :  601897       
    # 3rd Qu.:22.35    3rd Qu.: 39.48   3rd Qu.:  301896       
    # Max.   :92.80    Max.   :100.00   Max.   :16640260       

##############################################
### Create linear regressions of the data ###
##############################################

# linear regression of Hard_Coral_Cover organized by population density
  # xaxis = population density
  # yaxis = Hard_Coral_Cover
  # color points by region
  lr1 <- coralData %>% 
    ggplot(aes(log(Population_Density_50km), Hard_Coral_Cover, color = Region))+
    geom_point() +
    theme(legend.position = "none") + # remove key so that there is only one label
    geom_smooth(method = "lm") + 
    labs(y = "Percent Hard Coral Cover of Benthos", x = "Population Density Within 50km Radius (log)", title = "Regional Coral Cover in comparison to population density")


## output lin reg data

# linear regression of Macroalgae_Cover organized by population density
  # xaxis = population density
  # yaxis = Macroalgae_Cover
  # color points by region
  lr2 <- coralData %>% 
    ggplot(aes(log(Population_Density_50km), Macroalgae_Cover, color = Region))+
    geom_point() +
    geom_smooth(method = "lm") + 
    labs(y = "Percent Macroalgae Cover of Benthos", x = "Population Density Within 50km Radius (log)",title = "Regional Macroalgae Cover in comparison to population density")

#  group the graphs together
  plot_grid(lr1, lr2,ncol = 2)

## subset data by region for 4 regions run lm(y ~ x) 

  # see the different unique regions that the data was taken from
  unique(coralData$Region)

  gbr <- subset(coralData, Region == "GBR") # subset data from GBR 
  fk <- subset(coralData, Region == "Florida Keys") # subset data from Florida Keys
  gc <- subset(coralData, Region == "Greater Caribb") # subset data from Greater Caribb
  ip <- subset(coralData, Region == "Indo-Pacific") # subset data from Indo-Pacific

# take the linear regression of each region for Macroalgae_Cover: lm(y ~ x)
  gbr_lm <- lm( gbr$Macroalgae_Cover ~ gbr$Population_Density_50km ) # great barrier reef
  summary(gbr_lm)
    # p-value = .02544
    # R-squared = .03329
 
   fk_lm <- lm( fk$Macroalgae_Cover ~ fk$Population_Density_50km ) # florida keys
   summary(fk_lm)
    # p-value = .26
    # R-squared = .0008125
   
   gc_lm <- lm( gc$Macroalgae_Cover ~ gc$Population_Density_50km ) # greater caribbean
   summary(gc_lm)
   # p-value = .262
   # R-squared = .002665
   
   ip_lm <- lm( ip$Macroalgae_Cover ~ ip$Population_Density_50km ) # indo pacific
   summary(ip_lm)
   # p-value = .06156
   # R-squared = .003777

