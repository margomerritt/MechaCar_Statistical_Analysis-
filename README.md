# MechaCar Statistical Analysis

## Overview of Project
### Purpose

Analyzes a series of datasets from the automotive industry using statistics and hypothesis testing. Analysis includes visualizations, statistical tests, and interpretation of the results. All of the statistical analysis and visualizations were written in the R programming language. This project:
* Performs multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
* Collects summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
* Runs t-tests to determine if the manufacturing lots are statistically different from the mean population.
* Designs a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

### Resources

#### Datasource
* MechaCar_mpg.csv
* Suspension_Coil.csv

#### Software
* R version 4.2.2
* R Studio 
## Linear Regression to Predict MPG

### Linear Regression Model:

![linear regression deliverable 1](https://user-images.githubusercontent.com/111299372/214925601-6bb42c22-d174-4f73-8d6c-28ee143122fc.png)

### Summary Statistics:

![summary statistics deliverable 1](https://user-images.githubusercontent.com/111299372/214925619-12ca7603-96eb-45c1-ba64-50ee43e7d7e8.png)

After performing a linear regression on the MechaCar_MPG dataset we were able to determine the p-value and r-squared value. The p-value is 5.35e-11 and the R-squared value is 0.7149. 

Since the p-value = 5.35e-11 < 0.05 = alpha we reject the null hypothesis. Thus our slope of our linear model is not zero (m ≠ 0). 

The linear model used in this regression is a multiple linear regression. Which is a statistical model that extends the scope and flexibility of a simple linear regression model. 
In our analysis we found our R-squared value to be 0.7149. Thus approximately 71% of our predictions of mpg of our MechaCar prototypes will be correct. This makes this linear model relatively effective in our statistical analysis.

From our statistic summary we see that vehicle length and ground clearance provide non-random amounts of variance to the mpg values in the dataset. Then the vehicle weight, spoiler angle, and AWD must provide random amounts of variance to the mpg values in the dataset. 


## Summary Statistics on Suspension Coils

### Total Summary Dataframe:

![total summary deliverable 2](https://user-images.githubusercontent.com/111299372/214951427-f44bc030-c7cc-4701-b1da-df2c24853bba.png)

### Lot Summary Dataframe:

![lot_summary deliverable 2](https://user-images.githubusercontent.com/111299372/214951499-90ec640d-85fc-494c-a7b9-c5a170b18d22.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. From the Total Summary Dataframe we see that the PSI variance is 62.2936. Thus, the current manufacturing data meets the design specification for all manufacturing lots in total. However, not all of the individual lots meet these criteria. From the Lot Summary Dataframe we see that Lot1 and Lot2 meet the design specification with variances of 0.9796 and 7.4694, respectively. Lot3 has a PSI variance of 170.2862. Since Lot3 has a variance that exceeds 100 PSI this lot does not meet the design specification. 


## t-tests on Suspension Coils

A series of T-tests were performed in R to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. 

### One sample t-test across all manufacturing lots:

![One sample t-test](https://user-images.githubusercontent.com/111299372/215157636-079953b5-d8eb-43d0-a2bd-117ecb5e573e.png)

### Lot 1 t-test:

![lot 1 t-test](https://user-images.githubusercontent.com/111299372/215161452-a0231ead-d616-493e-9643-9c8e734edb79.png)

### Lot 2 t-test:

![lot 2 t-test](https://user-images.githubusercontent.com/111299372/215161472-2d1e1931-6a83-4aba-adcd-fec9f65fbff1.png)

### Lot 3 t-test:

![lot 3 t-test](https://user-images.githubusercontent.com/111299372/215161493-35ee269a-52a8-454f-9a73-1e4ae1560735.png)

### Intepretation of t-test results:

Null Hypothesis: true mean = 1500

Alternative Hypothesis: true mean is not equal to 1500



#### One sample t-test across all manufacturing lots results:

p-value = 0.06 > 0.05 = alpha

Thus we fail to reject the null hypothesis.

#### Lot 1 t-test results:

p-value = 1 > 0.05 = alpha

Thus we fail to reject the null hypothesis. 

#### Lot 2 t-test results:

p-value = 0.6072 > 0.05 = alpha

Thus we fail to reject the null hypothesis.



#### Lot 3 t-test results: 

p-value = 0.0417 < 0.05 = alpha

Thus we reject the null hypothesis. 



## Study Design: MechaCar vs Competition

Additional statistical studies can be performed to quantify how the MechaCar performs against the competition. Several different metrics that would be helpful to test and show to the consumer are: vehicle cost, city fuel efficiency, highway fuel efficiency, horse power, maintenance cost, or safety rating. 

### Statistical Test to Run

Since we want to run a test to see if there is a statistical difference between the distribution means from two samples we will use a two-sample t-test. The independent data type for the two-sample t-test is dichotomous (sample A vs. sample B). Thus our sample A and sample B will be the MechaCar data and the competitor car data, respectively. 

### A two-sample t-test is used to test the following hypotheses:

Null Hypothesis: There is no statistical difference between the two observed sample means.

Alternative Hypothesis: There is a statistical difference between the two observed means.

### Metric to Test 

A two-sample t-test can be utilized to run a statistical test on any of the metrics mentioned above. In this analysis we are going to focus on just one metric to test: crash safety rating. Data for car safety ratings is publicly available on websites such as https://www.nhtsa.gov/ratings. This is a government website ran by the United States Department of Transportation. To find vehicle safety ratings we search the website by year, make, and model of the vehicle. We will gather our competitor data from this website. We will have to run vehicle safety tests in a lab on our MechaCar in order to gather data on its safety rating. 

#### Since we are running a two-way t-test our hypotheses for our safety ratings are:

Null Hypothesis: There is no difference in the crash rating between MechaCar and its competitor.

Alternative Hypothesis: There is a difference in the crash rating between the two competitors. 

### Data to Run Test
