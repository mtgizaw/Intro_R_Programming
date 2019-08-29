#Assignment 1 
#Intro to R & Statistical Programming
#Please label the file with your name and upload to blackboard. 

#Name: Martha Gizaw


#Directions:
#Fill out this short assignment using your own knowledge. Please feel free to consult our lecture notes and code or ask us for help.    

#Question 1:
#Briefly describe the purpose of the following code line:
head(mtcars)

#The purpose of the above code line is to call the first n rows
#from the dataset "mtcars".


#Question 2:
#Write a line of code that repeats the sequence [1, 2, 3, 4, 5, 8, 9, 10] four times

rep(c(1, 2, 3, 4, 5, 8, 9, 10), times=4)


#Question 3:
#Produce a set of summary statistics for the "mpg" variable in the "mtcars" dataset 
#hint: the "mtcars" dataset is hidden, but can be called like any other object in R:

summary(mtcars$mpg)


#Question 4: 
#Why does the following code not compile?
#my_full_name <- c("Bob""Smith")

#The above line of code does not compile because either it is missing a 
#comma between two strings, or the strings are not combined into only one 
#string with only one set of quotation marks.

#CORRECTION:
my_full_name <- c("Bob Smith")
my_full_name_2 <- c("Bob", "Smith")

