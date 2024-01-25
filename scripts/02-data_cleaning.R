#### Preamble ####
# Purpose: Cleans the raw neighborhood crime data 
# Author:Thu Dong
# Date: 22 Jan 2024
# Contact: thu.dong@mail.utoronto.ca 
# License: MIT
# Pre-requisites: Run 01-download_data.R

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
clean_data <- select(raw_data,AREA_NAME,POPULATION_2023,ASSAULT_2023,
                     AUTOTHEFT_2023,BIKETHEFT_2023,BREAKENTER_2023,
                     HOMICIDE_2023,ROBBERY_2023,SHOOTING_2023,THEFTFROMMV_2023,
                     THEFTOVER_2023)
          
# replace NA with 0
clean_data[is.na(clean_data)] <- 0


# get total crime in year 2023

clean_data$TOTAL_CRIME_2023 <- rowSums(clean_data[, c("ASSAULT_2023", 
                                                      "AUTOTHEFT_2023", "BIKETHEFT_2023", 
                                                      "BREAKENTER_2023", "HOMICIDE_2023", "ROBBERY_2023",
                                                      "SHOOTING_2023", "THEFTFROMMV_2023", 
                                                      "THEFTOVER_2023")])

#### Save data ####
write_csv(cleaned_data, "neighborhood_crime_2023_clean.csv")
