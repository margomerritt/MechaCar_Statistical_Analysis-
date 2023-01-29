library(dplyr)
library(tidyverse)
library(magrittr)

# Deliverable 1 code: Linear Regression to Predict MPG

mechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # Read in csv file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_mpg) #create linear model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_mpg)) #generate summary statistics


# Deliverable 2 code: Create Visualizations for the Trip Analysis

suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) # Read in csv file

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),
                                                      Median=median(PSI),
                                                      Variance=var(PSI),
                                                      SD=sd(PSI),
                                                      .groups = 'keep')

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot)  %>% summarize(Mean=mean(PSI),
                                                                              Median=median(PSI),
                                                                              Variance=var(PSI),
                                                                              SD=sd(PSI),
                                                                              .groups = 'keep')

# Deliverable 3 code - T-tests on Suspension Coils

t.test(suspension_coil$PSI,mu=1500) 

lot1 <- subset(suspension_coil, Manufacturing_Lot == "Lot1")
lot2 <- subset(suspension_coil, Manufacturing_Lot == "Lot2")
lot3 <- subset(suspension_coil, Manufacturing_Lot == "Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
