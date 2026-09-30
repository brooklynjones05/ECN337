# In OLS, the fitted value Yihat=B0hat+B1hatXi is:
    # The model's prediction of Y at Xi
# The OLS residual Uihat equals:
    # Yi-Yihat (actual minus fitted)
# A positive residual (Uihat>0) means OLS:
    # Underpredicted Yi (actual>fitted)
# R^2 is:
    # The fraction of the sample variation in Y explained by X
# The total sum of squares decomposes as SST=
    # SSR + SSE
# The sum of the OLS residuals SUMiUihat is always:
    # 0
# An R^2 close to 0 means:
    # The OLS line explains little of the variation in Y --- common, and not necessarily a bad model
# The point (Xbar,Ybar):
    # Always lies on the OLS regression line
#For the sample x=(2,6,2), y=(12,6,6), find the OLS slope B1hat=SUM(Xi-Xbar)(Yi-Ybar)/SUM(Xi-Xbar)^2
    # -0.75
x = c(2,6,2)
y = c(12,6,6)
model = lm(y~x)
coef(model) # x is B1hat
#For that same sample x=(7,4,6), y=(6,4,0), find the OLS intercept B0hat=Ybar-B1hatXbar
    # 1.71
x = c(7,4,6)
y= c(6,4,0)
model = lm(y~x)
coef(model) # Intercept is B0hat
#For the sample x=(8,4,1), y=(9,4,8), fit the OLS line yhat=B0hat+B1hatx and predict yhat at x=4
    # 6.93
x = c(8,4,1)
y = c(9,4,8)
model = lm(y~x)
summary(model)
new_data = data.frame(x=4)
predict(model, newdata = new_data)
# A fitted line is yhat=2+4/10x. Find the fitted value yhat at x=18
    # 9.2
x_data = c(0,10,20)
y_data = c(2,6,10)
model = lm(y_data~x_data)
new_data = data.frame(x_data=18)
predict(model, newdata = new_data)
#A fitted line is yhat=0+2/10x. A person has x=18 and actual y=16. Find the residual uhat=y-yhat
0+0.2*18
16-3.6
    # 12.4
# A fitted slope is B1hat=5/10. Using deltayhat=B1hatdeltaX, find the predicted change in y when x rises by 9.
0.5*9
    # 4.5
# For the fitted line yhat = 0+6/10x and the three points (4,6),(7,13),(3,2), find SSR=SUM(Yi-Yihat)^2
x = c(4,7,3)
y = c(6,13,2)
yhat = 0+(6/10)*x
ssr = sum((y-yhat)^2)
print(ssr)
    # 90.44
# A regression has SST=253 and SSR=134. Find the explained sum of square SSE.
  #SST=SSR+SSE
  #253=134+SSE
    # SSE = 119
# A regression line has SST=366 and SSR=110. Find R^2
  # R^2 = SSR/SST
  # R^2 = 110/366
110/366
    # 0.30
# A regression line has SSE=157 and SST=293. Find R^2
  # R^2 = 1-SSE/SST
  # R^2 = 1-157/293
1-(157/293)
    # 0.46
# A regression has SST = 239 and SSR =168. What fraction of the variation Y is unexplained?
  # 168/239 = 0.70

# A regression has SST=214 and R^2=42/100. Find SSR
  # R^2 = SSR/SST
  # SSR = R^2*SST
0.42*214
    # 89.88