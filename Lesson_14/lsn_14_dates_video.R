## Date and Time in R
## by LTC David Beskow
## Also refer to https://r4ds.had.co.nz/dates-and-times.html

require(dplyr)
require(lubridate)


# Today's date
today()

# The time now
now()

#Create a date with a single string using the lubridate package
ymd('2023-02-02')
mdy("February 2nd, 2023")
dmy("2 Feb 2023")
ymd(20230202)

# Create a date-time with a single string using the lubridate package
ymd_hms('2023-02-02 20:11:29')
mdy_hm('02/02/2023 08:01' )

# Setting the timezone
x <-  ymd_hms("2023-02-22 10:10:00", tz = "UTC")
tz(x) <- "Pacific/Auckland"
x

# Setting date-time in a dataframe
twitter <- read.csv('twitter_sample.csv')
twitter$status_created_at[1]
str(twitter)

twitter$date <- ymd_hms(twitter$status_created_at, tz = 'UTC')
twitter$status_created_at[1]
str(twitter)


# Demonstrating read_csv in readr package
library(readr)
twitter <- read_csv('twitter_sample.csv')

# Durations
today() - ymd('2023-02-02')
difftime(today(), ymd('2023-02-02'), units = 'hours')

# Difftime on data frame in days
twitter$tweet_age <- difftime(now(), twitter$date, units = 'days')
twitter$tweet_age
hist(as.numeric(twitter$tweet_age))


# Creating Time Series
library(timetk)
time_series <- twitter %>% 
  summarise_by_time(.date_var = date,
    .by = "day", value = dplyr::n())

head(time_series)

# Plotting Time Series Base R
plot(time_series, type = 'l', main = 'Twitter Timeseries')

# Plotting Time Series in ggplot
ggplot(time_series, aes(x = date, y = value)) + 
  geom_line()  + ggtitle('Twitter Time Series')
