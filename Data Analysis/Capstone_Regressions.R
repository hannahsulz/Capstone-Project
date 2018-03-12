
setwd("~/Desktop/MSBA/Spring/Capstone/capstone-project/Data Analysis/Gender Classifications")

tfm <- read.csv("TFM_Followers.csv", header = T)

################################
#### TFM - INDIVIDUAL Level ####
################################

# Individual empowerment scores of followers ~ Gender + Individual Progressivism Scores of followers

individual_level <- lm(Emp_Score ~ Gender + Prog_Score + Gender * Prog_Score, data = tfm)

summary(individual_level)

#########################
#### Company Level?? ####
#########################

overall_company_test <- read.csv("TFM_Company_Prediction.csv", header = T)

aov <- aov(Company_Emp_Score ~ Company_Prog_Score + Avg_Follower_Gender + Company_Prog_Score:Avg_Follower_Gender, data = overall_company_test)
summary(aov)
