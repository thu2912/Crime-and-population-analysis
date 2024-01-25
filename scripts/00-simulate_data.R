#### Preamble ####
# Purpose: Simulates data
# Author: Thu Dong
# Date: 25 jan 2024
# Contact:thu.dong@mail.utoronto.ca
# License: MIT
# Pre-requisites: none
# Any other information needed? install package if neeeded

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Simulate data ####
simulated_data <-
  tibble(
    # Use 1 through to 151 to represent each division
    "Area ID" = 1:158,
    # Randomly pick an option, with replacement, 151 times
    "Population" =sample(x= 5000:37000, size = 158,
                         replace = TRUE),
    "Crime case" = sample(x= 1:1000,size = 158,
                          replace = TRUE)
    
    )
  



