library(dplyr)
mechacar_mpg_df <- read.csv('MechaCar_mpg.csv') #import dataset
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg_df)) #summarize linear model

suspension_data <- read.csv("Suspension_Coil.csv",stringsAsFactors = F, check.names = F) #read in suspension coil
total_summary <- suspension_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation=sd(PSI))

View(total_summary)

lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
view(lot_summary)

ggplot(suspension_data,aes(x=PSI)) + geom_density() #visualize distribution using density plot

?t.test()

# Peform t-test across all Lots
t.test(suspension_data$PSI,mu = 1500)

# Peform t-test on Lot 1
t.test(subset(suspension_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Peform t-test on Lot 2
t.test(subset(suspension_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Peform t-test on Lot 3
t.test(subset(suspension_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)