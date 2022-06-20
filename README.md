# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The linear regression model for the dataset is mpg = 6.267vehicle_length + 0.001vehicle_weight + 0.069spoiler_angle + 3.546ground_clearance - 3.411AWD - 1.040. From our model, the r-squared value is 0.71 and the p-value is 5.35e-11.

![lm](/images/lm.png)

![summary_lm](/images/summary_lm.png)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- According to the results, vehicle length and ground clearance are the two variables that provided a non-random amount of variance to the mpg values. In turn, meaning they are statistically unlikely to cause random amounts of variance and have a significant impact on mpg. 

### Is the slope of the linear model considered to be zero? Why or why not?
- The p-value of our model is 5.35e-11, which is smaller than the assumed significance level of 0.05%. This means the p-value is statistically significant and there is enough evidence to reject our null hypothesis. Therefore the slope would not be considered zero.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- This linear model does predict mpg of MechaCar prototypes since the R-squared value is 0.71. This value signifies that 71% of the variability of the mpg variable is explained using this model and there is a strong positive correlation.


## Summary Statistics on Suspension Coils

Summary statistics of mean, median, variance and standard deviation was created with R for the Suspension Coils dataset. The population PSI mean is 1500 and the mean for all manufacturing lots is 1498.78 according to the results. Another summary was created grouping the results according to manufacturing lots. 

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- The variance for all manufacturing lots in total is 62.29. This is lower than what is dictated by the design specifications, which is 100 pounds per square inch. Therefore, the manufacturing data as a whole meets the design specification. However, if we look at each lot individually, lot 3 does not meet design specifications. The variance is 170.29, which is about greater than 100 pounds per square inch so lot 3 does not meet design requirements. Lot 1 and 2 have a low variance of 0.98 and 7.47 respectively, making the variance for all manufacturing lots meet design requirements even though lot 3 failed. 


## T-Tests on Suspension Coils

- The t-test for all lots resulted in a p-value of 1, which is greater than the significance level of 0.05. Therefore, there is not sufficient evidence to reject the null hypothesis and the two means are statistically similar.

- The t-test for lot 1 resulted in a p-value of 1.568e-11, which is less than the significance level of 0.05. Therefore, there is sufficient evidence to reject the null hypothesis and the mean of the sample, lot 1, is statistically different from the population mean.

- The t-test for lot 2 resulted in a p-value of 0.0005911, which is less than the significance level of 0.05. Therefore, there is sufficient evidence to reject the null hypothesis and the mean of the sample, lot 2, is statistically different from the population mean.

- The t-test for lot 3 resulted in a p-value of 0.1589, which is greater than the significance level of 0.05. Therefore, there is not sufficient evidence to reject the null hypothesis and the mean of the sample, lot 3, is statistically similar to the population mean.


## Study Design: MechaCar vs Competition

A statistical study can be considered to quantify how the MechaCar will perform against its competitors. The question for this study might be “How the MechaCar’s safety performance in comparison to its competitors”. The following questions should be answered for the study design:

- What metric or metrics are you going to test?
This study design would test the cost, fuel efficiency, brake performance and safety rating between the MechaCar and its competitors. 

- What is the null hypothesis or alternative hypothesis?
The null hypothesis is brake efficiency percentage is equal to the required 50% and has no effect on safety performance. The alternative hypothesis is brake efficiency percentage is greater than the required 50% and has a significant effect on vehicle safety performance.

- What statistical test would you use to test the hypothesis? And why?
An ANOVA test might be used to see the safety performance of all vehicles in comparison to the normal distribution.

