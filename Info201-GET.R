install.packages("dplyr")
library(dplyr)
install.packages("httr")
library("httr")
install.packages("jsonlite")
library("jsonlite")

base.uri <- "https://api.github.com"

username <- "info201"
resource <- paste0("/users/", username, "/repos")
resource.emoji <- "/emojis"
uri <- paste0(base.uri, resource)

github.info <- GET(uri)

length(github.info)

body <- content(github.info, "text")
repos <- fromJSON(body)


