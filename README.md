# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Vehicle length and ground clearance provide non-random variance to the mpg values in the dataset. 

### Is the slope of the linear model considered to be zero? Why or why not?
The slope of our linear model is not zero. The adjusted R-squared value is .685 which means that roughly 68.5% of the variablilty of our dependent variable is explained using this linear model. If none of our independent variables accounted for the variance in our dataset THEN the slope of our model would be zero. 

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This linear model accounts for about 70 percent of the variance of the mpg values in the MechaCar dataset, which is adequate but could be stronger. The linear model suggests a relationship between vehicle length and ground clearance to mpg values. I would personally prefer a slightly stronger r-squared value.

## Summary Statistics on Suspension Coils
### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


The table below clearly demonstrates that the variance of the suspension coils coming out of Manufacturing Lot 3 exceeds the design specifications for the MechaCar. The variance is currently over 170 PSI. Lots 1 and 2 appear to be within range.
![Lot_Summary](https://user-images.githubusercontent.com/106618404/193146691-8ae7d72f-0489-4bf9-b1b8-a7efff3ce50c.PNG)

## T-Tests on Suspension Coils 
