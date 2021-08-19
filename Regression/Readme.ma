2 Part 2 - Regression

2.1 Simple Linear Regression

2.1.1 Simple Linear Regression Intuition
What are exactly the coefficients b0 and b1 in the Simple Linear Regression equation:
’Salary = b0 + b1 × Experience’
b0 is the salary you get with no experience and b1 is the increase in salary per year.

Why do we take the squared differences and simply not the absolute differences?
Because the squared differences makes it easier to derive a regression line. Indeed, to find that line we need
to compute the first derivative of the loss error function, and it is much harder to compute the derivative of
absolute values than squared values.

2.1.2 Simple Linear Regression in Python
Why didn’t we apply Feature Scaling in our Simple Linear Regression model?
It’s simply because since y is a linear combination of the independent variables, the coefficients can adapt
their scale to put everything on the same scale. For example if you have two independent variables x1 and
x2 and if y takes values between 0 and 1, x1 takes values between 1 and 10 and x2 takes values between 10
and 100, then b1 can be multiplied by 0.1 and b2 can be multiplied by 0.01 so that y, b1x1 and b2x2 are all
on the same scale.

What does ’regressor.fit(X_train, y_train)’ do exactly?
The fit method will take the values of X_train and y_train and then will compute the coefficients b0 and b1
of the Simple Linear Regression equation (y = b0 + b1x) as seen in the Intuition Lecture. That’s the whole
purpose of this fit method here.

2.1.3 Simple Linear Regression in R
What is the p-value?
To understand the P-value, we need to start by understanding the null hypothesis: the null hypothesis is the 
assumption that the parameters associated to your independent variables are equal to zero. Therefore under
this hypothesis, your observations are totally random, and don’t follow a certain pattern. 
The P-value is the probability that the parameters associated to your independent variables have certain nonzero values, given
that the null hypothesis is True. The most important thing to keep in mind about the P-Value is that it is
a statistical metric: the lower is the P-Value, the more statistically significant is an independent variable, that is the better predictor it will be.
