## SE370 AY23-2
## Lesson 14 - regex Video
## Created by LTC Beskow
## Last updated 2023-01-27

# The regex functionality allows us to match strings.  Regex allows us to define
# patterns that we want to find in text.  Think phone numbers, SSNs, emails, 
# hashtags, etc.  


# Understanding the different commands of Regex
strings <- c("a", "ab", "acb", "accb", "acccb", "accccb")
strings

# This means 0 or more c's 
grep("ac*b", strings, value = TRUE)

# This means one or more c's
grep("ac+b", strings, value = TRUE)

# 0 or 1 c's
grep("ac?b", strings, value = TRUE)

# Exactly 2 c's
grep("ac{2}b", strings, value = TRUE)

# At least 2 (the min number)
grep("ac{2,}b", strings, value = TRUE)

# At least 2, but no more than 3
grep("ac{2,3}b", strings, value = TRUE)

################ Extract #####################
require(stringr)
data <- c('The car has 80% of its life left and costs $23,000',
          'I live at 284 Main Street, Atlanta, GA 30809',
          'The post office (mypost@gmail.com) has two phone numbers: 706-586-6449 and 223.258.3165',
          'I cant believe the Cowboys lost #miserable')

# Extract all zip codes
p = "\\d{5}"
str_extract_all(data, p)

# Extract all percents
p = "\\d+(\\.\\d+){0,1}%"
str_extract_all(data, p)

# Extract all dollar figures
p = "(\\$[0-9]+(.[0-9]+)?)"
str_extract_all(data, p)

# Extract all emails
p = p = "[a-zA-Z0-9-.]+@[a-zA_Z0-9-.]+"
str_extract_all(data, p)

# Extract all phone numbers
p = "([2-9][0-9]{2})([- .]?)([0-9]{3})([- .])?([0-9]{4})"
str_extract_all(data, p)

# Extract all hashtags
p = "#\\S+"
str_extract_all(data, p)


################## Splitting #####################

# Split on white space
str_split(data[1], " +")

# Split sentences
# USE A TOKENIZER (like spacyr)


# In R, you can also take a look at the 'qdapRegex' package
