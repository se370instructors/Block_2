library(rjson)
library(dplyr)

# Passing argument files
json_file <- "twitter_sample_100.json"
json_data_as_list <- readLines(json_file) %>% lapply(fromJSON)

# Rename to shorter name


# Explore the data


# Determine distribution of languages in sample twitter with for loop
lang <- list()
for(i in 1:length(tw)){
  lang[[i]] <- tw[[i]]$lang
}


# examine followers


# get the number of followers with sapply
get_num_followers <- function(tweet){
  return(tweet$user$followers_count)
  }
sapply(tw, get_num_followers)

# Explore hashtags


# Extract hashtags
hashtags <- list()
count <- 1
for(tweet in tw){
  for(hashtag in tweet$entities$hashtags){
    hashtags[[count]] <- hashtag$text
    count <- count + 1
  }
}








