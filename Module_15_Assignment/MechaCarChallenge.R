library(dplyr)
library(tidyverse)

mcar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

head(mcar_table)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mcar_table) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mcar_table)) #generate summary statistics

suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

head(suspension_table)

?summarize()


total_summary <-summarize(suspension_table, Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD= sd(PSI), .groups='keep')

lot_summary <- suspension_table%>% group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD= sd(PSI), .groups='keep' )

?t.test()

t.test(suspension_table$PSI, mu=1500)

lot1 <- subset(suspension_table, Manufacturing_Lot =='Lot1')

t.test(lot1$PSI, mu=1500)

lot2 <- subset(suspension_table, Manufacturing_Lot =='Lot2')

t.test(lot2$PSI, mu=1500)


lot3 <- subset(suspension_table, Manufacturing_Lot =='Lot3')

t.test(lot3$PSI, mu=1500)

