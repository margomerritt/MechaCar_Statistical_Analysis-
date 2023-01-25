library(dplyr)

mechacar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg) #create linear model

summary(lm(mpg~vehicle_length,mechacar_mpg)) #summarize linear model



