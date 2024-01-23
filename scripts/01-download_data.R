#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author:Thu Dong
# Date: 22 Jan 2024
# Contact: thu.dong@mail.utoronto.ca 
# License: MIT
# Pre-requisites: NONE


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####

package <- show_package("neighbourhood-crime-rates")
package

# get all resources for this package
resources <- list_package_resources("neighbourhood-crime-rates")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
raw_data <- filter(datastore_resources, row_number()==1) %>% get_resource()
raw_data 


#### Save data ####
write_csv(the_raw_data, "neighborhood_crime_2023_raw.csv") 

         
