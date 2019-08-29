## Assignment 3
## Intro to R & Statistical Programming
## Please label the file with your name and upload to blackboard. 

## Name: Martha Gizaw


## Directions:
## Fill out this short assignment using your own knowledge. 
## Please feel free to consult our lecture notes and code or ask us for help.    


## lets use some built-in state-level data from 1977
data <- as.data.frame(state.x77, stringsAsFactors = F)
names(data)[4] <- "Life.Exp"
names(data)[6] <- "HS.Grad"


## Question 1
##
##Using the data we've loaded, visualize a relationship between two variables using 
## a scatterplot in ggplot. Select two variables that you suspect are correlated (dont 
## include the population variable!). Assign meaningful names to the plot axes.
library(ggplot2)
ggplot(data, aes(x=HS.Grad, y=Income)) + geom_point() + 
  ggtitle("Impact of HS Graduation on Income") + 
  xlab("HS On-Time Graduation Rate (%)") + 
  ylab("Student Income Level ($)")


## Question 2
##
## Estimate a linear model to explore the relationship between your two selected variables.
## Weight the model using the "Population" variable (Hint: use the lm() help file). Also, produce
## an ANOVA table for this model.
ml <- lm(Income ~ HS.Grad, data, weights = data$Population)
summary(ml)
## Intercept = 1795.73, Slope = 53.01 (Positive Slope)
plot(Income ~ HS.Grad, data, 
     main="Impact of HS Graduation on Income", 
     xlab="HS On-Time Graduation Rate (%)", 
     ylab="Student Income Level ($)")
abline(ml, col = "red")
anova(ml)


## Question 3
##
## Produce a scatterplot of the fitted values against the residuals for your model from question 2.
plot(ml)









