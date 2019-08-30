# Data Manipulation

############################################################
# Working with data

# COLON OPERATOR ###########################################

# Assigns number 0 through 10 to x1
x1 <- 0:10
x1

# Descending order
x2 <- 10:0
x2

# SEQ ######################################################

?seq  # R help on seq

# Ascending values (duplicates 1:10)
(x3 <- seq(10))

# Specify change in values
(x4 <- seq(30, 0, by = -3))

# ENTER MULTIPLE VALUES WITH C #############################

# c = concatenate (or combine or collect)
?c  # R help on c

x5 <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8)
x5

# SCAN #####################################################

?scan  # R help on scan

x6 <- scan()  # After running this command, go to console
# Hit return after each number
# Hit return twice to stop
x6

# REP ######################################################

?rep  # R help on rep
x7 <- rep(TRUE, 5)
x7

# Repeats set
x8 <- rep(c(TRUE, FALSE), 5)
x8

# Repeats items in set
x9 <- rep(c(TRUE, FALSE), each = 5)
x9


############################################################
# Accessing Data

library(pacman)

pacman::p_load(pacman,dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate,
               plotly, rio, rmarkdown, shiny, stringr, tidyr)

# IMPORTING WITH RIO #######################################

getwd()
setwd('C:\\Users\\hp\\Desktop\\AI\\R Programming\\Introduction to R')

# CSV
rio_csv <- import("./Datasets/mbb.csv")
head(rio_csv)

# TXT
rio_txt <- import("./Datasets/mbb.txt")
head(rio_txt)

# Excel XLSX
rio_xlsx <- import("./Datasets/mbb.xlsx")
head(rio_xlsx)

# DATA VIEWER ##############################################

?View
View(rio_csv)
