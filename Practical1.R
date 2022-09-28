# Practical 1

# Name: Sinenhlanhla Dlamini

# Student Number:u19028386

# Data and Packages

library(sqldf)
library(readr)



col1 <- c(5, 1, 6)
col2 <- c(2, 9, 4)
col3 <- c(0, 3, 7)

X_matrix <- matrix(cbind(col1, col2,col3), ncol = 3)

X_data <- as.data.frame(X_matrix)

employee_payroll <- read_csv("payroll.csv")
employees <- read_csv("employees.csv")
staff <- read_csv("staff.csv")

# Question 1.1:
Y_matrix <- matrix(15:1,nrow=3,ncol=5)

# Question 1.2:
X_transpose <- t(X_matrix)

# Question 1.3:
X_inverse <- solve(X_matrix)

# Question 1.4:
X_det <- det(X_matrix)

# Question 1.5:
X_extract <- X_matrix[1,2]

# Question 2.1:
col4 <- c(10,13,16,19)
col5 <- c(11,14,17,20)
col6 <- c(12,15,18,21)
Y_data <- data.frame(col4,col5,col6)

# Question 2.2:
X_modified <- X_data[-c(3),-c(2)]

# Question 2.3:
X_means <- colMeans(X_data)

# Question 3:


Calculator <- function(a,b,c){
  return ((1+(a/c))^b)
 
}

# Question 4.1:
Q4_1 <- sqldf("SELECT Employee_ID, Employee_Gender, Marital_Status, Dependents
              FROM employee_payroll")


# Question 4.2:
Q4_2 <- sqldf("SELECT Employee_ID, Employee_Gender,Salary
              FROM employee_payroll
              ORDER BY Salary DESC")

# Question 4.3:
Q4_3 <- sqldf("SELECT Employee_ID,City
              FROM employees
              WHERE Country IN ('AU') ")


# Question 4.4:
Q4_4 <- sqldf("SELECT Employee_ID,Salary,0.1 * Salary AS Bonus
              FROM employee_payroll")


# Question 4.5:
Q4_5 <- sqldf("SELECT Employee_ID,Dependents, 
              CASE
                 WHEN Dependents=0 THEN 'No children' 
                 WHEN Dependents < 3 THEN 'Small Family' 
               else 'Large Family' 
              END Family_Size
              FROM employee_payroll")

