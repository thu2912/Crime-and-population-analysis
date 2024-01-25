#### Preamble ####
# Purpose: Tests
# Author: Thu Dong
# Date: 24 Jan 2024
# Contact:thu.dong@mail.utoronto.ca
# License: MIT
# Pre-requisites:run download data and test data 



#### Workspace setup ####
library(tidyverse)

#### Test data ####
clean_data$TOTAL_CRIME_2023|> min() >= 4
clean_data$POPULATION_2023 |> max() <= 37000
clean_data$POPULATION_2023 |> class() == "numeric"