library(dplyr)
library(Hmisc)
library(stringr)
library(lubridate)
#set working directory
#just doing a test on Rebase as I had a problem on 2016-05-18 when working at Box
#test again
#this is to perform changes in my repo to replicate the current scenario at Box - make changes in here, push to remote. then fetch from test_flight repo, rebase.
#this scenario is to make changes here, push it to remote. In the test_flight repo i have un committed changes similar to box scenario. Let us see how it proceeds.
#this to replicate 593 scenario from the direct flight analysis side
setwd("C:/Sriram/Resumes/Full time/The advisory Board/data")

#Browse the pwd. This is actually not needed but just for my personal purpose
dir()

#read data
data <- read.csv("873632021_T_ONTIME.csv", na.strings=c(""," ","NA"))

#explore data using describe from Hmisc package
describe(data)

#same can be done with summary
summary(data)

#exploring the cancellation code using bar plot 
barplot(table(data$CANCELLATION_CODE), col="BLUE")

#create a secondary variable by using mutate function of dplyr to get the total delay
data <- mutate(data, total_delay = (CARRIER_DELAY + WEATHER_DELAY + NAS_DELAY + SECURITY_DELAY +LATE_AIRCRAFT_DELAY))

#function to label whether the flight is delayed or not
cal_delay = function(x) {
  if(is.na(x)){
                 y = 0
            }
  else    {
              if(x > 0) {
                y = 1
              }
          }
  return(y)
}

#mutate to create a new variable DELAYED, the label that is to be used as the dependant variable
#data <- mutate(data, delayed = cal_delay(data$total_delay))

data <- mutate(data, delayed = unlist(lapply(data$total_delay, cal_delay)))

#Converting the FL_DATE to date type using lubridate library
#data$FL_DATE <- as.Date(data$FL_DATE) --- got error
data$FL_DATE <- mdy(data$FL_DATE)

#getting the day of week using lubridate
data <- mutate(data, day_of_week = wday(data$FL_DATE, label=TRUE))

#check data frame
str(data)
glimpse(data)

#group by the day of week and we can get some insights on delays
group_by(data$day_of_week) %>% summarise(count_del = sum(data$delayed))

#convertin the day_of_week to factor
#data$day_of_week <- as.character(data$day_of_week) -- did this before to as.factor
data$day_of_week <- as.factor(data$day_of_week)

#grouping by day of week and finding the number of delays by using summarise
#data %>% group_by(data[,'day_of_week']) %>% summarise(count_del = n())

#data %>% group_by(data[,'day_of_week']) %>% summarise(count_del = sum(data$delayed == 1))

attach(data)
group <- group_by(data, day_of_week)

#gives the total delays grouped by week day, this gives us a picture of delays on each day for January
sum <- summarise(group, sum=sum(delayed))

#arrange the result in descending order
arrange <- arrange(sum, desc(sum))

#to get the mean of the delays by using summarise of dplyr
mean <- summarise(group, mean=mean(delayed)) %>% arrange(desc(mean))

#group_select<- select(group, day_of_week,delayed)

#group_filter <- filter(group_select, delayed == 1)
 
#mean_2<- summarise(group, mean=mean(delayed))

#lets try grouping by airlines to get some summary statistics 
group_car <- group_by(data, CARRIER)

#summarise and arrange to get some insights
summary <- summarise(group_car, total_delay_carrier=sum(delayed)) %>% arrange(desc(total_delay_carrier))

#now for the mean delays which gives insights as to which airlines is good wrt delays
summary_mean <- summarise(group_car, avg_delay_carrier=mean(delayed)) %>% arrange(desc(avg_delay_carrier))

#Creating secondary variable to bucket the departure times on 3 hour intervals
data_bkup <- data

#function to bucket the departure time to Rush hour, Business Hours, Mid-day, lazy-hour, Evening-Rush, night, mid-night, morning
split_hour <- function(x) {
              if(x > 0000 & x <= 0300) {
                  y = "Mid-night"
              }
              else if(x > 0300 & x <= 0600) {
                y = "Morning"
              }
              else if(x > 0600 & x <= 0900) {
                y = "Rush-Hour"
              }
              else if(x > 0900 & x <= 1200){
                y = "Business-hour"
              }
              else if(x > 1200 & x <= 1500){
                y = "Mid-day"
              }
              else if(x > 1500 & x <= 1800){
                y = "lazy-hour"
              }
              else if(x > 1800 & x <= 2100){
                y = "Evening-Rush"
              }
              else {
                y = "Night"
              }
      return(y)
  
}

#data backup before removing null values in departure time
data_bkup <- data


#removing the cancelled flights as we assume that delay cannot exist when a flight gets cancelled
data <- filter(data, !is.na(data$DEP_TIME))


#data backup after removing null values in departure time
data_bkup_fil_null <- data

#removed 11473 rows which had null in departure time as the flights were cancelled
str(data)

#creating the new secondary derived variable to bucket the departure time as described above
data <- mutate(data, hour = sapply(data$DEP_TIME, split_hour, USE.NAMES=FALSE))


#I am planning to build a logistic regression model to predict whether a flight would be delayed based on
# a few features in the data set: here "delayed" is the dependant variable and day_of_week, hour, distance,
#origin, destination, carrier as the independant predictors. 

#selecting the required variables from the cleaned dataset
#final <- select(data, one_of(data$CARRIER, data$ORIGIN, data$DEST, data$DISTANCE, data$delayed, data$day_of_week, data$hour))

final <- select(data, CARRIER, ORIGIN, DEST, DISTANCE, delayed, day_of_week, hour)

#col_vector <- c("CARRIER", "ORIGIN", "DEST", "DISTANCE", "delayed", "day_of_week", "hour")

#chcking for nulls in the "final" dataset - result is false which confirms no null
any(is.na(final))

#converting "hour" to a factor
#taking a backup
final_bkup <- final

final$hour <- as.factor(final$hour)
final$delayed <- as.factor(final$delayed)

#given the timeframe of 2 to 3 hours, I am unable to do further checks to the dateset
attach(final)
logistic_delay <- glm(delayed ~ CARRIER + ORIGIN + DEST + DISTANCE + day_of_week + hour, data = final, family = "binomial")
summary(logistic_delay)

attach(data)
logistic_delay <- glm(delayed ~ CARRIER + ORIGIN + DEST + DISTANCE + day_of_week + hour, data = data, family = "binomial")

#due to memory error, grouping by origin aiport and checking for distribution
group <- group_by(data, ORIGIN)
summary1 <- summarise(group, count = n()) %>% arrange(desc(count))

#for our analysis, we will consider the 10 major airports and pick 1000 records randomly from them 
final_filter <- filter(final, ORIGIN %in% c("ATL","ORD","DEN","DFW","LAX","SFO","PHX","LAS","IAH","MCO"))

#now picking random samples from this data
set.seed(100)
final_sample <- sample_n(final_filter, 10)

#checking for delaye flight counts from individual origin airports 
group_by(final_sample, ORIGIN) %>% summarise(count = sum(delayed)) %>% arrange(desc(count))

#logistic with this refined data
attach(final_sample)
logistic_delay <- glm(delayed ~ CARRIER + ORIGIN + DISTANCE + day_of_week + hour, data = final_sample, family = "binomial")
summary(logistic_delay)



set.seed(1000)
sample_1500 <- sample_n(final_sample, 1500)

attach(sample_1500)
logistic_delay <- glm(delayed ~ CARRIER + ORIGIN + DISTANCE + day_of_week + hour, data = sample_1500, family = "binomial")
summary(logistic_delay)




library("caTools")
sample = sample.split(final_sample$delayed, SplitRatio = .70)
train = subset(final_sample, sample == TRUE)
test = subset(final_sample, sample == FALSE)

attach(train)
logistic_delay <- glm(delayed ~ CARRIER + ORIGIN + DISTANCE + day_of_week + hour, data = train, family = "binomial")
summary(logistic_delay)


cut.off <- 0.2
pred.chargeoff <- (a > cut.off);
a<-table(pred.chargeoff)


k <- predict.glm(logistic_delay,test,type="response")

cut.off <- 0.2;
pred.chargeoff <- (k > cut.off);
confusionMatrix(test$delayed,as.numeric(pred.chargeoff))

cut.off <- 0.4;
pred.chargeoff <- (k > cut.off);
confusionMatrix(test$delayed,as.numeric(pred.chargeoff))

cut.off <- 0.35;
pred.chargeoff <- (k > cut.off);
confusionMatrix(test$delayed,as.numeric(pred.chargeoff))

exp(coefficients(logistic_delay))


