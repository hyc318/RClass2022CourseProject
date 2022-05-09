#Birth Rates

total <- 'Total births'
age <- c('15 and younger ', '15-19 ', '20-24 ', '25-29 ', '30-34 ', '35-39 ', '40-45 ', '45 or older ')
race <- c('White ', 'Black ', 'Asian or Pacific Islander ', 'American Indian or Alaska Native ')
ethnicity <- c('Hispanic ', 'Non-Hispanic ', 'Non-Hispanic White ', 'Non-Hispanic Black ')
marrital_status <- c('Married ', 'Unmarried ')
education <- c('Doctorate or professional degree ', 'Master\'s degree ', 'Bachelor\'s degree  ', 'Associate degree ', 'Some college credit, but not a degree ', 'High school, no diploma ', '8th grade or less ', 'High school graduate or GED ')



birth_graph <- function(group) {
  
  group_name <- rlang::as_name(rlang::enquo(group))
  group_name <- str_to_title(group_name)
  group_name <- str_replace_all(group_name, "_", " ")
  
  births_long %>% 
    filter(Type %in% group) %>%
    ggplot(aes(x = Year, y = Births, color = Type))+
    guides(color = guide_legend(title = group_name))+
    geom_point(scales = "free_x")+
    ggtitle(str_c("Mother's", group_name, sep = " "))+
    theme_bw()+
    theme(plot.title = element_text(hjust = 0.5))
  
  
}

#Life Expectancy

race_and_ethnicity <- c('All Women ', 'White Women ', 'Black Women ', 'Hispanic Women ', 'White non Hispanic Women ', 'Black non Hispanic Women ')
white_women <- 'White Women '
black_women<- 'Black Women '
hispanic_women <- 'Hispanic Women '
white_non_Hispanic_women <- 'White non Hispanic Women '
black_non_Hispanic_women <- 'Black non Hispanic Women '


life_graph <- function(group) {
  
  group_name <- rlang::as_name(rlang::enquo(group))
  group_name <- str_to_title(group_name)
  group_name <- str_replace_all(group_name, "_", " ")
  
  life_long %>% 
    filter(Type_of_Women %in% group) %>%
    ggplot(aes(x = Year, y = life_expectancy, color = Type_of_Women))+
    guides(color = guide_legend(title = group_name))+
    geom_point(scales = "free_x")+
    ggtitle(str_c("Life", "Expectancy", sep = " "))+
    theme_bw()+
    theme(plot.title = element_text(hjust = 0.5))
  
  
}
