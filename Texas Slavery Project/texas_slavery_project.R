# Project: Open Data of the Black Diaspora
# Dataset: Texas Slavery Project
# Source: Texas Slavery Project, Virginia Center for Digital History
# http://www.texasslaveryproject.org/database/list.php?begin_year=1837&end_year=1845&county=&group=&include_estimated_data=1&include_source=1&submit=Submit

# This registry is also available in for download:
# http://www.texasslaveryproject.org/database/list.php?begin_year=1837&end_year=1845&amount=&amount_number=&pop_value=&amount2=&amount_number2=&pop_value2=&include_estimated_data=1begin_year=1837&end_year=1845&amount=&amount_number=&pop_value=&amount2=&amount_number2=&pop_value2=&include_estimated_data=1&export=1

#----packages----
library(rvest)
library(pryr)
library(dplyr)
library(data.table)
library(magrittr)
#----------------

#----script-----
# assign url where data resides to variable and read in as r object
# important note: this is a searchable database; therefore the url
# will return the table with filters applied
# for our initial url pull the following filters were applied:
# - begin_year=1837
# - end_year=1845
# - county= (blank means All Counties)
# - group= (blank means Group by County and Year)
# - include_estimated_data=1 (1 means yes)
# - include_source=1 (1 means yes)
url <- "http://www.texasslaveryproject.org/database/list.php?begin_year=1837&end_year=1845&county=&group=&include_estimated_data=1&include_source=1&submit=Submit"
webpage <- read_html(url)

# find relevant table by node look up (e.g. "table")
# and convert to table
county.totals <- webpage %>%
  html_nodes("table") %>% 
  .[[1]] %>% 
  html_table()

# check object size and dimesion along with variable names
object_size(county.totals)
dim(county.totals)
glimpse(county.totals)

# store original names in case we want to use later
orig.col.names <- names(county.totals)

# set to a data.table because that's how I like to manipulate data
setDT(county.totals, check.names = T)
glimpse(county.totals)

# convert number columns to type numeric
# get list of columns that should not be converted (dimension columns)
dim.cols <- c("Year", "County", "Est", "Source")
num.cols <- setdiff(names(county.totals), dim.cols)

for (col in num.cols){
  set(county.totals, j = col, value = as.numeric(county.totals[[col]])) 
}

glimpse(county.totals)
#----------------