# Libraries

library(pacman)
library(tidyverse)
library(here)
library(tidycensus)
library(readxl)
library(dplyr)
library(janitor)
library(knitr)

# Output file names

births <- read_csv(here::here("Data", "births_usafacts.csv"))
# https://usafacts.org/data/topics/people-society/health/longevity/births/

net_worth <- read_csv(here::here("Data", "average_family_net_worth_usafacts.csv"))
# https://usafacts.org/data/topics/economy/wealth-and-savings/wealth-profile/family-average-net-worth/

life_expect <- read_csv(here::here("Data", "life_expectancy_in_years_usafacts.csv"))
# https://usafacts.org/data/topics/people-society/health/longevity/life-expectancy/








