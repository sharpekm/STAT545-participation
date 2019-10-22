#################### Class participation cm002 ####################
  
number * 2  
number <- 5 + 2
number * 2

this_is_a_really_long_name <- 2.5
rm(this_is_a_really_long_name)

a * 2

##  store several numbers in a variable ( use the c() function)
times <-c(60, 40, 33, 15, 20, 55, 35)
##  to define AND print at the same time, put brackets around 
(times <-c(60, 40, 33, 15, 20, 55, 35))
##  get in times in hours
times / 60

##  replace times, with times in hours (not running, want in mins)
times <- times / 60

##  moving on to functions
mean(times)  ## average = 37 mins 
sqrt(times)  
range(times) 

times < 30
times == 20 ##  travel times equal to 20
times != 20 ##  travel times not equal to 20

##  times greater than 20 AND less than 50
##  evualates to a vector of trues & falses. 
##  & compares and when R sees two trues gives a true
times > 20 & times < 50

##  less than 20 OR times greater than 50
times < 20 | times > 50

##  which entries are less than 30?
which(times < 30) ## 4, 5 times are less than 30


i <- which(times < 50)
sum(times <30)
a <- all(times < 30)

##  subsetting
times[3]
times[-3] ##  returns vector without entry 3 in it

##  need the c, without assumes times is a matrix. 
times[c(2, 4)]  
times[c(4, 2)]   ##  notice that the order does matter
times[1:5]   ##  gives us first five entries

##  can also put logicals inside brackets 
##  but must match length of original
times[times < 30]

##  what if don't want numbers over 50?
times[times > 50] <-50  ## extract portion of vector over 50 & replace objects
## replaced anything over 50 with 50 
times

##  assign 8th entry to be NA
times[8] <- NA
times
mean(times)  ## returns as "NA" because have missing observations

##  allow to remove NAs before doing computation
?mean
mean(times, na.rm = TRUE)

##  R matches up order of argument
##  so if don't want to write out "na.rm", must specify all arguments
mean(times, 0, TRUE)
mean(na.rm = TRUE, x = times)

##  load mtcars dataframe
mtcars

##  prints to screen the structure of the dataframe
str(mtcars)

##  extract a vector of names
names(mtcars)


mtcars$mpg
mtcars$cyl
mean(mtcars$mpg)  ##  extracting mean of mpg 

##  continue exploring R functions w/ mtcars
head(mtcars)
tail(mtcars)
nrow(mtcars)   ## # of rows
ncol(mtcars)   ##  # of cols
summary(mtcars)
row.names(mtcars)
##  first column name = mpg; wt is column 6
names(mtcars)   

