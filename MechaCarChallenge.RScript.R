library(tidyverse)
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar))


SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 


mu=mean(SuspensionCoil$PSI)
t.test(SuspensionCoil$PSI,mu=mean(SuspensionCoil$PSI)) #compare sample versus population means
t.test(subset(SuspensionCoil$PSI,SuspensionCoil$Manufacturing_Lot=="Lot1"),mu=mean(SuspensionCoil$PSI))
t.test(subset(SuspensionCoil$PSI,SuspensionCoil$Manufacturing_Lot=="Lot2"),mu=mean(SuspensionCoil$PSI))
t.test(subset(SuspensionCoil$PSI,SuspensionCoil$Manufacturing_Lot=="Lot3"),mu=mean(SuspensionCoil$PSI))
