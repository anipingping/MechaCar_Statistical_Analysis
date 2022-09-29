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
ALL LOTS: The one-sample t-test below, with a p-value of .06028, means that we cannot reject the null that the sample mean for all lots is not statistically different from the population mean.

![ttest_all_lots](https://user-images.githubusercontent.com/106618404/193153909-1ee3f8e3-473f-4f32-877c-7cf055a15bd3.PNG)

LOT 1: Manufacturing Lot 1 has a p-value of 1, which is exactly the mean. The mean PSI of Manufacturing Lot 1 is the same as the population mean. We cannot reject the null hypothesis.

![ttest_lot_1](https://user-images.githubusercontent.com/106618404/193153929-cb04bf70-7231-4619-a3dd-6814939706f5.PNG)

LOT 2: Manufacturing Lot 2 has a p-value of .6072, large enough that we cannot reject the null. The Lot 2 sample mean is not statistically different from the population mean.

![ttest_lot_2](https://user-images.githubusercontent.com/106618404/193153944-4dc3eb5c-39bf-4001-87e2-2fcd901bd94f.PNG)

LOT 3: Manufacturing Lot 3 has a small p-value of .04168, small enough that we CAN reject the null hypothesis at the 95 percent confidence interval. The Lot 3 sample mean IS statistically different than the population mean. This should concern MechaCar manufacturers. Something is happening in Lot 3.

![ttest_lot_3](https://user-images.githubusercontent.com/106618404/193153958-49dc27eb-2296-47e6-ab3e-ed86e12e46da.PNG)


## Study Design: MechaCar vs Competition

### Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

#### What metric or metrics are you going to test?
With the cost of gasoline skyrocketing (it is close to $7 for a gallon of gas in Sonoma County, California), an obvious and relevant exercise is to compare the mpg of the MechaCar against its competitors. 

#### What is the null hypothesis or alternative hypothesis?
The null hypothesis is probably as follows: there is no statistically significant difference between the average miles per gallon of the MechaCar and the average miles per gallon of MechaCar's 3 closest competitors by market share. Any difference is random and cannot be used to argue that MechaCar is a more fuel efficient vehicle.

#### What statistical test would you use to test the hypothesis? And why?
I would compare the mean miles per gallon of the MechaCar from all manufacturing lots with the mean miles per gallon of MechaCar's 3 closest competitors.

#### What data is needed to run the statistical test?
We have most of the data already. We have mpg from the mechacar dataframe. We simply need the mpg from the 3 nearest competitors -- whether that is Toyota, Nissan, Honda, Ford, GM, or whatnot is to be determined -- but the comparision would be fairly straightforward and, potentially, very powerful for MechaCar's marketing efforts.



