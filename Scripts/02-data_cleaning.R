#### Preamble ####
# Purpose: Cleans the data
# Author: Rayan Awad Alim
# Date: October 3rd 2024
# Contact: rayan.alim@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(here)


#Read data
raw_census_data <- read.csv(here("data", "raw_data", "usa_00001.csv"))


#Drop uneeded variables
selected_census_data <- raw_census_data %>%
  select(-SAMPLE, -SERIAL, -CBSERIAL, -HHWT, -CLUSTER, -STRATA, 
         -GQ, -PERNUM, -PERWT, -EDUC)

#### Save data ####
write_csv(selected_census_data, "data/analysis_data/clean_census_data.csv")

