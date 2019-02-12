# Project: Open Data of the Black Diaspora
# Dataset: Slaveholder Names
# Source: California Department of Insurance - Slavery Era Insurance Registry
# http://www.insurance.ca.gov/01-consumers/150-other-prog/10-seir/slaveholder-names.cfm

# This registry is also available in pdf format:
# http://www.insurance.ca.gov/01-consumers/150-other-prog/10-seir/upload/Registry-of-Slaveholder-Names.pdf

#----packages----
library(rvest)
library(pryr)
library(dplyr)
library(data.table)
library(magrittr)
#----------------

#----script-----
# assign url where data resides to variable and read in as r object
url <- "http://www.insurance.ca.gov/01-consumers/150-other-prog/10-seir/slaveholder-names.cfm"
webpage <- read_html(url)

# find relevant table by attribute look up (e.g. [class="this table"])
# and convert to table
slaveholder.names <- webpage %>%
  html_nodes("[summary='slave name list']") %>% 
  .[[1]] %>% 
  html_table()

# check object size and dimesion along with variable names
object_size(slaveholder.names)
dim(slaveholder.names)
glimpse(slaveholder.names)
# store original names in case we want to use later
orig.col.names <- names(slaveholder.names)

# set to a data.table because that's how I like to manipulate data
setDT(slaveholder.names, check.names = T)
glimpse(slaveholder.names)

# rename County, State column to clarify to which party,
# slave or slaveholder, it is referring
setnames(slaveholder.names, 
         old = names(slaveholder.names)[grepl("^County", names(slaveholder.names))],
         new = c("Slaveholder.County.State", "Slave.County.State")
         )

glimpse(slaveholder.names)
#----------------