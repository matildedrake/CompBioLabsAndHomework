## lab step #3:

# create variable bags of chips 
chips <- 5 
# create variable guests
guests <- 8

## lab step 5:
#create variable of average bags of chips (.4) each guest will eat
av_chips_per_guest <- .4

## lab step 7: calculate the number of bags left over

#calculate how many bags of chips are eaten
bags_eaten <- (guests + 1)(av_chips_per_guest)

# subtract bags eaten from original to get bags left over
chips - bags_eaten

## lab step 8:
# create vectors for each person with their rankings of the star wars episodes
self_rate <- c(7, 9 ,8, 1, 2, 3, 4, 6, 5)
penny_rate <- c(5, 9, 8, 3, 1, 2, 4, 7, 6)
lenny_rate <- c(6, 5, 4, 9, 8, 7, 3, 2, 1)
stewie_rate <- c(1, 9, 5, 6, 8, 7, 2, 3, 4)

## lab step 9:
# store penny's ranking for episode 4
PennyIV <- penny_rate[4]

# store lenny's ranking for episode 4
LennyIV <- lenny_rate[4]

## lab step 10:
#concatenate 4 sets of rankings into a single object with 9 rows and 4 colummns
total_rate <- cbind(self_rate, penny_rate, lenny_rate, stewie_rate)
total_rate

## lab step 11: 

# inspect PennyIV, penny_rate, total_rate
str(PennyIV) # num 3
str(penny_rate) # num[1:9] 5 9 8 3 1 2 4 7 6
str(total_rate) # num [1:9, 1:4] 7 9 8 1 2 3 4 6 5 5 ...
# str shows the type of variable
# str of PennyIV prints the rating at index 3
# str of penny_rate tells you the range of rows and what is in that vector
# str of total_rate shows the range of rows and columns and gives the data from the first column

## lab step 12:

#store everyones rankings as a data frame (names as columns)
data_frame_total <- data.frame(total_rate)
as_data_total <- as.data.frame(total_rate)

## lab step 13:
# compare total_rate and data_frame_total

# test 1:
dim(data_frame_total)
dim (total_rate)
# prints 9 rows and 4 columns for data_frame_total and total_rate

# test 2: test if data_frame_total and total_rate are equivalent
data_frame_total == total_rate
# true they are equal

# test 3: typeof() data
typeof(data_frame_total) # prints "list"
typeof(total_rate) # prints "double"
# data_frame_total data is stored as a list while total_rate is stored as a double

## lab step 14:
# make a vector of episode names as roman numerals
episode_names <- c("I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX")

## lab step 15:
# assign the roman numerals (episode_names) to the rows for data_frame_total
row.names(data_frame_total) <- episode_names
data_frame_total

## lab step 16:
# access the third row of total_rate
total_rate[3,]

## lab step 17:
# access the fourth column from data_frame_total
data_frame_total[,4]

## lab step 18:
# access self ranking for episode V
data_frame_total[1,4] 

## lab step 19:
# access penny's ranking for episode 2
data_frame_total[2,2]

## lab step 20: 
# access everyone's rankings for episodes 4-6
data_frame_total[4:6,]

## lab step 21:
# access everyone's rankings for episodes 2,5,7
data_frame_total[c(2,5,7),] # make vector of rows 4,5,7

## lab step 22:
# access rankings for penny and stewie for epsiode 4 and 6
data_frame_total[c(4,6), c(2,4)] # create a vector for rows 4 and 6 and a vector for rows 2 and 4

## lab step 23:
# switch lenny's rating for episodes 2 and 5
lenny_ep2 <- total_rate[2,3] # store episode 2 rating
lenny_ep5 <- total_rate[5,3] # store episode 5 rating
total_rate[2,3] <- lenny_ep5 # replace rating for 2 with 5
total_rate[5,3] <-lenny_ep2 # replace rating for 5 with 2
total_rate # check if correct

## lab step 24:
# access lenny's episode rating for episode 6 using headers
data_frame_total["VI","lenny_rate"]

## lab step 25:
# undo the switch made in step 23
data_frame_total["II","lenny_rate"] <- lenny_ep2
data_frame_total["V","lenny_rate"] <- lenny_ep5
data_frame_total

## lab step 26:
# redo the switch made in step 23
len_ep2 <- data_frame_total$lenny_rate[2]
len_ep5 <- data_frame_total$lenny_rate[5]
data_frame_total$lenny_rate[2] <- len_ep5
data_frame_total$lenny_rate[5] <- len_ep2
data_frame_total


