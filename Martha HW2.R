#Assignment 2
#Intro to R & Statistical Programming
#Please label the file with your name and upload to blackboard. 

#Name: MARTHA GIZAW

#Directions:
#Fill out this short assignment using your own knowledge. 
#Please feel free to consult our lecture notes and code or ask us for help.    


#Question 1
#Using the iris dataset create a boxplot visualizing Sepal width according to species. 
#Be sure and include axis labels and a title

boxplot(Sepal.Width~Species, data=iris, 
        xlab="Species", ylab="Sepal Width", main="Iris Boxplot")


#Question 2 
#Using the iris dataset create a new variable for the ratio between Petal Length and Petal width 
#and provide the 5 figure summary for your new variable.

new_var <- iris$Petal.Length / iris$Petal.Width
fivenum(new_var)
#For a good breakdown on what the five numbers (excluding the average) mean:
summary(new_var)


#Question 3
#Using an if else statement write a code chunk that prints if a number is odd or even and test it.

num <- readline(prompt="Enter number: ")
num <- as.integer(num)
if (num %% 2 == 0) {
  print(paste(num, "is even."))
} else {
  print(paste(num, "is odd."))
}


#Question 4
#Using a for loop write a code block that prints 1 to 20 advancing by one each time and then 
#back down from 20 to 1. The output should look something like this...

# [1] 1
# [1] 1 2
# [1] 1 2 3
# ...
# [1] 1 2 3
# [1] 1 2
# [1] 1

forward <- seq(from=2, to=20, by=1)
backward <- seq(from=20, to=2, by=-1)
x <- 1
if (x) {
  for (i in forward) {
    print(x)
    x <- c(x, i)
  }
  for (i in backward) {
    print(x)
    x <- x[-i]
  }
  print(x)
}




