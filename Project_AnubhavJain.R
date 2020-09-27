#Estimating working capital of Wipro using Regression Method

#importing data 
WiproData <- read.csv("/Users/jain/Desktop/sanjay fuloria sir R/Wipro.csv", header = T)

#display data
print(WiproData)

#plotting independent variable(Revenue) and dependent variable(Working Capital)
plot(WiproData$Working.Capital ~ WiproData$Revenue)

#apply lm() function can be used to create a simple regression model
regression <- lm(WiproData$Working.Capital ~ WiproData$Revenue)

#abline() function is used to add regression line
abline(regression, col="red", lwd=3)

#display intercept and slope of revenue (T-value)
summary(regression)

# 95% confident interval 
confint(regression)

#display F value 
anova(regression)