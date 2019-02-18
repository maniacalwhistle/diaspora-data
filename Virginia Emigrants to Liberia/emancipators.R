# Project: Open Data of the Black Diaspora
# Dataset: Emancipators
# Source: Emigrants to Liberia Project, Virginia Center for Digital History
# http://www.vcdh.virginia.edu/liberia/index.php?page=Resources&section=Search%20Emancipators&result=yes


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
# - page=Resources
# - section=Search%20emancipators
# - result=yes

# Note: can't get table from raw url to work so saved page source as
# local html file for now; need to work on this
# url <- "http://www.vcdh.virginia.edu/liberia/index.php?page=Resources&section=Search%20emancipators&result=yes"
url <- "/Users/Sherlock/Desktop/Black Diaspora Data/Virginia Emigrants to Liberia/emancipators.html"
webpage <- read_html(url)

# find relevant table by node look up (e.g. "table")
# and convert to table
emancipators <- webpage %>%
  html_nodes("table") %>% 
  .[[1]] %>% 
  html_table(header = T)

# check object size and dimesion along with variable names
object_size(emancipators)
dim(emancipators)
glimpse(emancipators)

# store original names in case we want to use later
orig.col.names <- names(emancipators)

# set to a data.table because that's how I like to manipulate data
setDT(emancipators, check.names = T)
glimpse(emancipators)
#----------------