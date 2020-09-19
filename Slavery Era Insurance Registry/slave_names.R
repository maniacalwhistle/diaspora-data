# Project: Open Data of the Black Diaspora
# Dataset: Slave Names
# Source: California Department of Insurance - Slavery Era Insurance Registry
# http://www.insurance.ca.gov/01-consumers/150-other-prog/10-seir/slave-names.cfm

# This registry is also available in pdf format:
# http://www.insurance.ca.gov/01-consumers/150-other-prog/10-seir/upload/Slave-Names-Registry.pdf

#----packages----
library(rvest)
library(pryr)
library(dplyr)
library(data.table)
library(magrittr)
#----------------

#----script-----
# assign url where data resides to variable and read in as r object
url <- "http://www.insurance.ca.gov/01-consumers/150-other-prog/10-seir/slave-names.cfm"
webpage <- read_html(url)

# find relevant table by attribute look up (e.g. [class="this table"])
# and convert to table
slave.names <- webpage %>%
  html_nodes("[summary='Slave names']") %>% 
  .[[1]] %>% 
  html_table()

# check object size and dimesion along with variable names
object_size(slave.names)
dim(slave.names)
glimpse(slave.names)
# store original names in case we want to use later
orig.col.names <- names(slave.names)

# set to a data.table because that's how I like to manipulate data
setDT(slave.names, check.names = T)
glimpse(slave.names)

# rename County, State column to clarify to which party,
# slave or slaveholder, it is referring
setnames(slave.names, 
         old = names(slave.names)[grepl("^County", names(slave.names))],
         new = c("Slave.County.State", "Slaveholder.County.State")
         )
# view table
glimpse(slave.names)
#----------------
