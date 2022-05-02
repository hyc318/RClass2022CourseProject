# Download data from HUD

library(tidyverse)
library(here)
library(readxl)

# Output file names

housing_data_joined_csv <- here("Data_Trans", "housing_data_joined.csv")

# Check if we have files already downloaded

if(file.exists(housing_data_joined_csv)) {
  
  return(cat("Housing files already exists"))
  
} else {
  
  
  AK_data <- read_xlsx(here::here("Data", "TRACT_AK_MN_2020.xlsx"))
  MO_data <- read_xlsx(here::here("Data", "TRACT_MO_WY_2020.xlsx"))
  
  joined_data <- AK_data %>% 
    bind_rows(MO_data)
  
  # Save file
  write_csv(joined_data, housing_data_joined_csv)
}







