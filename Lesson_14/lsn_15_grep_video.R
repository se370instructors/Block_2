## SE370 AY23-2
## Lesson 15 - grep Video
## Created by LTC Beskow
## Last updated 2023-01-20

# the grep command is used extensively in linux, mac, and other unix-like operating systems
# The grep command is used to search for a specific string or pattern in a list or vector
# The grep command is use in R for the same purpose.

# Read in list of emails for an example
emails <- c('john.smith@gmail.com','sarah.wright@cmu.edu','jacob.brown@westpoint.edu','natalee.white@icloud.com',
            'heather.simson@hotmail.com','julie.andrews@westpoint.EDU', 'luke.skywalker@westpoint.edu')

# show output of basic grep
grep('edu', emails)

#show ignore case
grep('edu', emails, ignore.case = TRUE)

#demonstrate grepl (return logical vector)
grepl('edu', emails, ignore.case = TRUE)

# demonstrate how to subset a vector with grep
emails[grep('edu', emails)]

#demonstrate how to subset a dataframe with grep
head(mtcars)
mtcars[grep('Toyota',rownames(mtcars)),]

# Common use is subsetting files to a certain type
files = dir()
files = files[grep('.csv', files)]


# Introducing the sub and gsub commands.  sub will replace the first instance 
# of a string or patter.  gsub will conduct a global substitution

phone_numbers <- c("706.259.3785","845.236.1677","493.285.3798")

# replace period with hyphen.  because the period and hyphen are reserved symbols
# you will have to escape them
# sub will only replace the first instance
sub('\\.', '\\-', phone_numbers)

# gsub will replace all of them
gsub('\\.', '\\-', phone_numbers)




