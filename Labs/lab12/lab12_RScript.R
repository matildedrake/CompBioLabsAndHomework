setwd("~/EBIO4420/CompBioLabsAndHomework/Labs/lab12")
library(ggplot2)

# import trail camera data
data <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv")
data <- as.data.frame(data)

# Problem 1: create a barplot from the data

# create a smaller data frame with only the species and counts
species_count_DF <- as.data.frame(with(data, table(Species)))

# create a barplot from species_count_DF data
# order species by least to most abundant
ggplot(data = species_count_DF) +
  geom_bar(aes(x = Freq, y = reorder(Species, -Freq)), stat = "identity") +
  labs(y = "Species", x = "Abundance", title = "Species Abundance On and Off Trail")


