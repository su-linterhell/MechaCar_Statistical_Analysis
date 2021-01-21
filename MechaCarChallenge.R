library(dplyr)
library(tidyverse)

mcar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

head(mcar_table)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mcar_table) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mcar_table)) #generate summary statistics
