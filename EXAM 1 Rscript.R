## Exam 1 Script

# Usful R Commands
library(wooldridge) # set this first!!!!
summary() # shows min, max, median, mean, etc.
View() 
mean()
var()
sd()
cov(wage1$wage,wage1$educ) #covariance = 
cor(wage1$wage,wage1$educ) #correlation = 
# Making a vector -> Ordered list of #s
c() # can list individual numbers c(1,2,5,6) or c(1:5)
# Defining vectors to variables:
X = c()
    # Can now use X as the data of vector.
** # squares variables
exp() # calculates the exponential of a number: raises it to e.
# Use to view random variables in a dataset:
ls() 
# Use to count the number of variables in a dataset:
ncol()
# Use to count number of observations in a dataset:
nrow()
# Creating a new variable inside data set, use $ notation with =
mydata$new_variable = mydata$wage

#Computing population level steps:
1. probvec = c(...) #input probabilities
2. xvec = c(...) #input set of values for x
3. yvec= c(...) #input set of values for y
# Formula for expected value E[X] of X is: Sum(x)*P(X=x) or x*P(X=x)
xvec*probvec # then find sum of E[X]
sum(xvec*probvec)
# Formula for Expected value E[XY]:
xvec*yvec 
sum((xvec*yvec)*probvec)

EX = sum(xvec*probvec)
EY = sum(yvec*probvec)
EXsq = sum(xvec**2 * probvec)
EYsq = sum(yvec**2 * probvec)
EXY = sum(xvec * yvec * probvec)

# Var(X) = E[X^2] - E[X]^2
    varX = EXsq - EX**2
    varY = EYsq - EY**2
# sd(X) = sqrt(Var(X))
    sdX = sqrt(varX)
    sdY = sqrt(varY)
# Cov(X,Y) = E[XY] - E[X] * E[Y]
    covXY = EXY - EX * EY
# Cor(X,Y) = Cov(X,Y)/sd(X)sd(Y)
    corXY = covXY / (sdX * sdY)
    
# Linear Regression -- Given two lists of numbers of equal length, R can regress one (dependent variable) on the other.
    lm(wage1$wage ~ wage1$educ)
    lm(wage ~ educ, data = wage1)
  # Estimated intercept coefficent B0hat as (Intercept) and B1hat as wage$educ or educ
    
# Can save regression as reg = lm(wage ~ educ, data = wage1)
    reg = lm(wage ~ educ, data = wage1)
# Can now access features of regression output using $ syntax
reg$coefficients
  # returns B0hat and B1hat
reg$coefficients[1]
  # return the first element of the coefficient vector or B0hat
reg$coefficients[2]
  # returns the second element of the coefficient vecotr or B1hat
reg$residuals
  # returns a list of the residuals from reg, so the sum of squared residuals can be found using:
sum(reg$residuals**2) --> # This tells us the SSr (Sample Sum Regression)

reg$fitted.values # shows the predicted (fitted) values for Y or sample Y, Yhat
sum((reg$fitted.values - ybar)**2) # shows SSE which is equal to the sum of n(Yihat-Ybar)^2
    # ybar is sample avg of the dependent variable.
summary(reg) # gets more detailed breakdown of the regression results.
summary(reg)$r.squared # R^2 of the regresion
summary(reg)$coefficients # shows the standard errors (U), t-values and p-values
summary(reg)$coefficients[,2] # shows vector of standard errors
summary(reg)$coefficients[,3] # shows the vector of t-values
summary(reg)$coefficients[,4] # shows the vector of p-values
summary(reg)$coefficients[2,4] # picks out individual elements of these columns

# Multiple Regression -- estimating multiple regression models in R by adding more variables to the lm() command. Ex:
wage=B0+B1educ+B2exper+B3tenure+U # estimates the regression model
reg= lm(wage ~ educ + exper + tenure, data = wage1)
summary(reg)






