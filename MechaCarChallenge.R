library(dplyr)
library(tidyverse)
library(magrittr)

# Deliverable 1 code: Linear Regression to Predict MPG

#mechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # Read in csv file

#lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_mpg) #create linear model

#summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_mpg)) #generate summary statistics


# Deliverable 2 code: Create Visualizations for the Trip Analysis

suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) # Read in csv file

summarize_suspension <- suspension_coil %>% summarize(Mean=mean(PSI),
                                                      Median=median(PSI),
                                                      Variance=var(PSI),
                                                      SD=sd(PSI),
                                                      .groups = 'keep')



