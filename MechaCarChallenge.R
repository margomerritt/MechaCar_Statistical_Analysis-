library(dplyr)

mechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_mpg) #create linear model

#lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg) #create linear model

#summary(lm(mpg~vehicle_length,mechaCar_mpg)) #summarize linear model

#summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mechaCar_mpg)) #summarize linear model

#summary(lm(mpg~vehicle_weight,mechaCar_mpg)) #summarize linear model

#summary(lm(mpg~spoiler_angle,mechaCar_mpg)) #summarize linear model

#summary(mechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_mpg)) #generate summary statistics

