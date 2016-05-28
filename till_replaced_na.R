boxplot(Mort$HCPot)
boxplot(Mort$HCPot)
boxplot(Mort$HCPot)
boxplot(Mort$NOxPot)
boxplot(Mort$SO2Pot'')
boxplot(Mort$SO2Pot
)
boxplot(Mort$SO2Pot)
boxplot(Mort$S02Pot)
boxplot(Mort$NOx)
savehistory("C:/Sriram/SAS/R/code.Rhistory")
Mortality_Data <- read.csv("C:/Sriram/SAS/Mortality_Data.csv")
View(Mortality_Data)
attach(Mortality_Data)
pairs(~JanTemp+JulyTemp+RelHum+Rain+Mortality+Education+PopDensity+X.NonWhite+X.WC+pop+pop.house+income+HCPot+NOxPot+S02Pot+NOx,data=mtcars,
main="Simple Scatterplot Matrix")
pairs(~Mortality+Rain+Education+PopDensity+pop+pop.house+HCPot+NOxPot+S02Pot+NOx,data=mtcars,
main="Simple Scatterplot Matrix")
summary(Mortality_Data)
x<-list(foo=1:4, bar=0.6)
x
x<-list(foo=1:4, bar=0.6, baz="hello"
)
x[c(1:3)]
x<-list(a=list(10,12,14), b=c(3.14,2.81))
x[c(1:2)]
dat1<-read.csv("C:\Users\SriramPVK\Desktop\H\hw1_data")
dat1<-read.csv("C:\\Users\\SriramPVK\\Desktop\\H\\hw1_data")
x<-c(4,"a", TRUE)
x
x<-c(1,3,5)
y<-c(3,2,10)
cbind(x,y)
x<-list(2,"a","b",TRUE)
x[[2]]
x<-c(3,5,1,10,12,6)
x[x<6]==0
x[x!6]<0
x[x!=6]<0
x<-c(3,5,1,10,12,3)
x[x<6]==0
x
dat1<-read.csv("C:\Users\SriramPVK\Desktop\H\hw1_data")
dat1<-read.csv("C:\Users\SriramPVK\Desktop\H\hw1_data.csv")
dat1<-read.csv("C:/Users/SriramPVK/Desktop/H/hw1_data.csv")
names(data1)
names(dat1)
x<-("dat1", nrows=2)
dat1<-read.csv("C:/Users/SriramPVK/Desktop/H/hw1_data.csv")
x<-("C:/Users/SriramPVK/Desktop/H/hw1_data.csv", nrows=2)
x<-list("dat1, nrows=2")
x
x<-list("dat1", nrows=2)
x
x<-head(dat1, n=2)
x
dim(dat1)
x<-tail(dat1, n=2)
x
x<-(dat1, n=47)
x<-(dat1, n=47)
x<-data.frame(dat1, n=47)
x
x<-data.frame(dat1, nrow=47)
x
x<-dat1[47,]
x
x<-is.na(dat1$Ozone)
x
dim[x]
sum(x)
x1<-dat1$Ozone[!x]
x1
sum(x)
mean(x1)
attach(dat1)
x<- Ozone>31&&Temp>90
x
x<- dat1[(Ozone > 31), ]
x<- Ozone>31
x
x<- dat1[(Ozone > 31), ]
x
x<- dat1[(Ozone > 31 && Temp > 90), ]
x<- dat1[(Ozone > 31) & (Temp > 90), ]
x
mean(Solar.R, na.rm=TRUE)
x<- data.frame(Ozone>31&Temp>90)
x
rnorm(10)
?rnorm
x = rnorm(10)
mean(x)
sum(x)
x
rnorm(2)
rnorm(2)
mean(rnorm(2))
mean(rnorm(2))
x = rnorm(20, 1)
x
mean(x)
mean(x)
x = rnorm(20, 1)
x = rnorm(20, 1)
mean(x)
m = matrix(1:4, 2)
m
m = matrix(1:4, 3)
m = matrix(1:4, 1)
m
m = matrix(1:4, 2)
margin.table(m,1)
margin.table(m,2)
margin.table(m,3)
margin.table(m,-1)
margin.table(m)
?margin
set.seed(1)
rpois(5, 2)
rpois(5, 2)
set.seed(1)
rpois(5, 2)
set.seed(1)
rpois(5, 2)
set.seed(10)
x <- rep(0:1, each = 5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e
plot(y)
install.packages("KernSmooth.r")
install.packages("KernSmooth")
library(KernSmooth)
exit
\q
install.packages("RPostgresSQL")
install.packages("RPostgreSQL")
library(DBI)
library(RPostgreSQL)
drv <- dbDriver("PostgreSQL")
con = dbConnect(drv, host="10.250.6.51", dbname="inpatient", user="sriram2", password="8XPdu9Asg4UMuLjg")
a == b
'a' == 'b'
'a' == 'a'
'a' > 'a'
'a' < 'a'
'a' != 'a'
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
views == 13
views <- matrix(c(linkedin, facebook), nrow = 2)
views <- matrix(c(linkedin, facebook))
views
views <- matrix(c(linkedin, facebook), nrow = 2)
views
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
views
views <= 14
facebook >= 2(linkedin)
a = 2*linkedin
a
facebook >= 2*linkedin
sum(facebook >= 2*linkedin)
!sum(facebook >= 2*linkedin)
sum!(facebook >= 2*linkedin)
sum(!facebook >= 2*linkedin)
last <- tail(linkedin, 1)
last
last < 5 | last > 10
last > 15 | last <= 20
last > 15 & last <= 20
linkedin >= 12 | facebook >= 12
linkedin >= 12
linkedin >= 12 & facebook >= 12
a = 3
if (a<10) {}
if (a<10) { print "a is less than 10"} elseif(a>10) {print "a is greater than 10"} else (print "error")
if (a<10) { print ("a is less than 10")} elseif(a>10) {print ("a is greater than 10")} else {print ("error")}
if(a<10) { print ("a is less than 10")} elseif(a>10) {print ("a is greater than 10")} else {print ("error")}
if(a<10) { print("a is less than 10")} else if(a>10) {print("a is greater than 10")} else {print("error")}
a = 'b'
if(a<10) { print("a is less than 10")} else if(a>10) {print("a is greater than 10")} else {print("error")}
a = ''
if(a<10) { print("a is less than 10")} else if(a>10) {print("a is greater than 10")} else {print("error")}
speed = 45 while(speed < 70) {print("speed is within the limit", speed) speed = speed + 5}
speed = 45 while(speed < 70) {print("speed is within the limit", speed) speed = speed + 5}
speed = 45
while(speed < 70) {print("speed is within the limit", speed) speed = speed + 5}
while(speed < 70) {print(paste("speed is within the limit", speed)) speed = speed + 5}
while(speed<70) {print(paste("speed is within the limit", speed)) speed = speed + 5}
while(speed<70) { print(paste("speed is within the limit", speed)) speed=speed+5}
?while
lll
?while()
?hist
while(speed<70) { print(paste("speed is within the limit", speed)); speed=speed+5}
values = c(1,2,3,4,na)
values = c(1,2,3,4,NA)
sd(values)
sd(values, true)
sd(values, True)
sd(values, TRUE)
triple = function(x) { y = x * 3; return(y)}
tripe(3)
triple(4)
math_magic = function(x,y) {sum = x + y; return(sum)}
math_magic(4,5)
math_magic = function(x,y) { if(y==0){print("Y cannot be zero")}; divide = x/y; return(divide)}
math_magic(4,0)
math_magic = function(x,y) { if(y==0){print("Y cannot be zero")} else{divide = x/y; return(divide)}}
math_magic(4,0)
math_magic(4,1)
search()
?dataset
iris
clear
clr()
clear()
data()
names(BJsales)
head(BJsales)
names(iris)
head(BJsales.lead)
names(BJsales.lead)
head(EuStockMarkets)
names(JohnsonJohnson)
names(iris)
iris(Sepal.Length)
iris[Sepal.Length]
iris$Sepal.Length
?rep
a = rep(NA,4)
a
a[2 > 4] = 1
a
a[2 > 1] = 1
a
days = seq(1,21, by=1)
days
days = seq(1:21)
days
days = 1:21
days
days = seq(1:21)
str(dats)
str(days)
days = 1:21
str(days)
linkedin
irirs
iri
iris
iris[1]
iris[-1]
head(iris[-1])
head(iris[1])
head(iris)
head(iris[-5])
head(iris[-2])
?table
# Set random seed. Don't remove this line.
set.seed(1)
# Chop up iris in my_iris and species
my_iris <- iris[-5]
species <- iris$Species
# Perform k-means clustering on my_iris: kmeans_iris
kmeans_iris = kmeans(my_iris, 3)
str(kmeans_iris)
dim(kmean_iris)
names(kmeans_iris)
# Set random seed. Don't remove this line.
set.seed(1)
# Chop up iris in my_iris and species
my_iris <- iris[-5]
species <- iris$Species
# Perform k-means clustering on my_iris: kmeans_iris
kmeans_iris = kmeans(my_iris, 3)
str(kmeans_iris)
dim(kmeans_iris)
names(kmeans_iris)
kmeans_iris
kmeans_iris$cluster
species
# Set random seed. Don't remove this line.
set.seed(1)
# Chop up iris in my_iris and species
my_iris <- iris[-5]
species <- iris$Species
# Perform k-means clustering on my_iris: kmeans_iris
kmeans_iris = kmeans(my_iris, 3)
str(kmeans_iris)
dim(kmeans_iris)
names(kmeans_iris)
# Compare the actual Species to the clustering using table()
table(kmeans_iris$cluster, species)
# Plot Petal.Width against Petal.Length, coloring by cluster
plot(Petal.Length ~ Petal.Width, data = my_iris, col = kmeans_iris$cluster)
-*14
-6*14
17-101
USER == USER
"USER" == "USER"
x =5
y =
7
!(x<4)
ls()
search()
library(ggvis)
search()
require("data.table")
result = require("data.table")
install.packages("data.table")
result = require("data.table")
a = c(1,2,3,4)
b=c(5,6,7,8)
ab = c(a,b)
ab
a = c(1:10)
a
a = c(1:10,30:40)
a
a = c(1:10,30:40,5,7,9,12)
median(a)
sum(a)
x = seq(60,120,1)
plot(x, dnorm(x,90,10), type="l", xlim=c(60,120))
plot(x, dnorm(x,90,10), xlim=c(60,120))
pnorm(20,90,10)
pnorm(80,90,10)
pnorm(72,90,10)
x=seq(50,140,length=200)
y1=dnorm(x,80, 10)
plot(x,y1,type='l',lwd=2,col='red')
y2=dnorm(x,110, 10)
lines(x,y2,type='l',lwd=2,col='blue')
abline(v=qnorm(0.95,80,10))
qnorm(0.95,80,10)
Qnorm(c(0.025, 0.975), 90, 10)
qnorm(c(0.025, 0.975), 90, 10)
qnorm(0.025, 90, 10)
qnorm(0.975, 90, 10)
pnorm(70.40036,90,10)
a = c(1,2,3,4)
b = c(34,5,6)
d = c(a,b)
d
d = c([a],[b])
d = (a,b)
d = ([a],[b])
grp.ids <- as.factor(c(rep(1,8), rep(2,4), rep(3,2)))
grp.ids
x <- model.matrix(~grp.ids)
x
d = rbind(a,b)
a
b
b = c(3,4,5,6)
d = rbind(a,b)
d
x<- seq(50,140,length=200)
y1<- dnorm(x,80, 10)
plot(x,y1,type='l',lwd=2,col='red')
y2<- dnorm(x,110, 10)
lines(x,y2,type='l',lwd=2,col='blue')
cord.x2<- c(0,seq((round(1-qnorm(0.025,110,10))),100,1),100)
cord.y2 <- c(0,dnorm(seq((round(1-qnorm(0.025, 110, 10))), 100, 1), 110, 10),0)
polygon(cord.x2,cord.y2,col='red')
abline(v=round(qnorm(0.975, 80, 10, lower.tail=T)))
abline(v=round(qnorm(0.025, 80, 10, lower.tail=T)))
cord.x1 <- c(100,seq(round(qnorm(0.975, 80, 10, lower.tail=T)), 140,1),140)
cord.y1 <- c(0,dnorm(seq(round(qnorm(0.975, 80, 10, lower.tail=T)),140, 1), 110, 10),0)
polygon(cord.x1,cord.y1,col='6')
text(95,0.005, "ß ",xpd=5)
text(115,0.005, "1-ß ",xpd=5)
getwd()
pnorm(100,90,10)
1-pnorm(100,90,10)
dnorm(qnorm(c(0.05, 0.95), 90, 10), 90, 10))
dnorm(qnorm(c(0.05, 0.95), 90, 10), 90, 10)
qnorm(c(0.025, 0.975), 90, 10)
segments(qnorm(c(0.05, 0.95), 90, 10), 0, qnorm(c(0.05, 0.95), 90, 10),
dnorm(qnorm(c(0.05, 0.95), 90, 10), 90, 10))
j = segments(qnorm(c(0.05, 0.95), 90, 10), 0, qnorm(c(0.05, 0.95), 90, 10),
dnorm(qnorm(c(0.05, 0.95), 90, 10), 90, 10))
j
?rpart
library(rpart)
?rpart
set.seed(71)
iris.rf <- randomForest(Species ~ ., data=iris, importance=TRUE,
proximity=TRUE)
print(iris.rf)
library(randomforest)
library(randomForest)
install.packages("randomForest")
library(randomForest)
set.seed(71)
iris.rf <- randomForest(Species ~ ., data=iris, importance=TRUE,
proximity=TRUE)
print(iris.rf)
iris.ctree <- ctree(Species ~., data=iris)
round(importance(iris.rf), 2)
install.packages("dplyr")
a <- c(1,2,3,4,5)
mean(a)
sd(a)
var(a)
b <- sd(a)
b^2
sq(2)
7.33^2
a = c(26,31,21,29,32,26,25,28)
mean(a)
median(a)
mode(a)
b = c(30,28,25,24,37,27,31,35)
iqr(b)
IQR(b)
sort(b)
c = c(4,6,9,2,7,5,8,10,15,1,6,4,8,7,13)
IQR(c)
sort(c)
dim(c)
str(c)
1500 * 0.52
1500 * 0.6
1500 - 780
1500 *.4
1 - pchisq(33.503-22.845,27-20)
age <- c(4,8,7,12,6,9,10,14,7)
gender <- c(1,0,1,1,1,0,1,0,0) ; gender<-as.factor(gender)
bmi_p <- c(0.86,0.45,0.99,0.84,0.85,0.67,0.91,0.29,0.88)
m_edu <- c(0,1,1,2,2,3,2,0,1); m_edu<-as.factor(m_edu)
p_edu <- c(0,2,2,2,2,3,2,0,0); p_edu<-as.factor(p_edu)
f_color <- c("blue", "blue", "yellow", "red", "red", "yellow", "yellow", "red", "yellow")
asthma <- c(1,1,0,1,0,0,0,1,1)
f_color <- as.factor(f_color)
data <- iris
dim(data)
library(dplyr)
glimpse(iris)
library(DPLYR)
library(dplyr)
bt <- seq(60,120,1)
plot(bt,dnorm(bt,90,10))
plot(bt, dnorm(bt, 90, 10), type="l", xlim=c(60, 120), main="blood pressure")
pnorm(72,90,10)
pnorm(10,90,10)
c/Users/SriramPVK/Google Drive/Full time/boomerang/flight_analysis
setwd('c/Users/SriramPVK/Google Drive/Full time/boomerang/flight_analysis')
setwd('C:/Users/SriramPVK/Google Drive/Full time/boomerang/flight_analysis')
pwd
getwd()
ls
dir()
setwd("C:/Sriram/Resumes/Full time/The advisory Board/data")
dir()
data <- read.csv("873632021_T_ONTIME.csv", na.strings=c(""," ","NA"))
describe(data)
library(Hmisc)
describe(data)
summary(data)
table(data$CANCELLATION_CODE)
barplot(table(data$CANCELLATION_CODE))
histogram(data$CANCELLATION_CODE)
histogram(data$DISTANCE)
histogram(log(data$DISTANCE))
require(dplyr)
data <-mutate(data, total_delay=(CARRIER_DELAY + WEATHER_DELAY + NAS_DELAY + SECURITY_DELAY +LATE_AIRCRAFT_DELAY))
str(data)
23+40+NA
glimpse(data)
library(stringr)
data$CARRIER_DELAY <- str_replace(data$CARRIER_DELAY,"NA",0)
library(stringr)
glimpse(data)
data$CARRIER_DELAY <- str_replace(data$CARRIER_DELAY,NA,0)
glimpse(data)
data$CARRIER_DELAY <- as.integer(data$CARRIER_DELAY)
glimpse(data)
complete.cases(data)
data$CARRIER_DELAY <- str_replace(data$CARRIER_DELAY,'NA',0)
glimpse(data)
data$CARRIER_DELAY <- as.integer(data$CARRIER_DELAY)
glimpse(data)
clear
clr
clr()
clear()
clrscr
clrscr()
glimpse(data)
data <- mutate(data, data$CARRIER_DELAY=ifelse(is.na(data$CARRIER_DELAY),0,data$CARRIER_DELAY))
data <- mutate(data, CARRIER_DELAY=ifelse(is.na(data$CARRIER_DELAY),0,data$CARRIER_DELAY))
glimpse(data)
data <- mutate(data, WEATHER_DELAY=ifelse(is.na(data$WEATHER_DELAY),0,data$WEATHER_DELAY))
glimpse(data)
data <- mutate(data, NAS_DELAY=ifelse(is.na(data$NAS_DELAY),0,data$NAS_DELAY))
glimpse(data)
data <- mutate(data, SECURITY_DELAY=ifelse(is.na(data$SECURITY_DELAY),0,data$SECURITY_DELAY))
glimpse(data)
data <- mutate(data, LATE_AIRCRAFT_DELAY=ifelse(is.na(data$LATE_AIRCRAFT_DELAY),0,data$LATE_AIRCRAFT_DELAY))
glimpse(data)
data <- mutate(data, total_delay = (CARRIER_DELAY + WEATHER_DELAY + NAS_DELAY + SECURITY_DELAY +LATE_AIRCRAFT_DELAY))
glimpse(data)
setwd('C:/Users/SriramPVK/Google Drive/Full time/boomerang/flight_analysis')
write.csv(data,"replaced_NA.csv")
savehistory(file="till_replaced_na")
