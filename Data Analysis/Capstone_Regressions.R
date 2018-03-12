
setwd("~/Desktop/MSBA/Spring/Capstone/capstone-project/Data Analysis")

data <- read.csv("Company_Regression_Data.csv", header = T)

####################################
#### Overall Company Regression ####
####################################

# Company Empowerment Score ~ Avg. Follower Gender + Avg. Follower Progressivism Score + Avg. Follower Gender * Avg. Follower Progressivism Score + Avg. Follower Empowerment Score

company_reg <- lm(Company_Emp_Score ~ Average_Follower_Gender + Average_Follower_Prog_Score + Average_Follower_Gender * Average_Follower_Prog_Score + Average_Follower_Emp_Score, data = data)

summary(company_reg)

