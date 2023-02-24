## String Manipulation in R.  
## Developed by LTC David Beskow
## Last updated on 16 February 2023

library(stringr)

text <- c('Cadet Smith scored    100% on the WPR.  ',
          'Cadet Jones phone number is 706-659-1685. ',
          'SE370 is awesome!!  #SE370 #datascience')

# Measure the length of a string
str_length(text[1])     # A single string
str_length(text)        # A vector of strings

# Get rid of trailing spaces
str_trim(text[1])

# Get rid of trailing spaces and collapse muliple spaces to a single space
text <- str_squish(text)
text

# Convert to upper case
str_to_upper(text)  

# Convert to lower case
str_to_lower(text)

# Detect and count a pattern
str_detect(text, "SE370")
str_count(text, "SE370")

#Extract patterns from text
# Define regex pattern for phone numbers
phone <- "([2-9][0-9]{2})[- .]([0-9]{3})[- .]([0-9]{4})"

str_detect(text, phone)
str_count(text, phone)
str_extract(text, phone)

# Replace patterns in text
str_replace(text, 'WPR', 'midterm')

# Split text into words or sentences
words <- str_split(text, ' ')
words

# Glue (or concatenate) strings together
for(list in words){
  print(str_c(list, collapse = ' '))
}


# Example task.  With the text below,
#  1. Remove end of line markers
#  2. Remove extra white space
#  3. Remove all hashtags
#  4. Remove all punctuation and numbers
#  5. Convert to lower case
#  6. Split into words
#  7. Remove stop words
#  8. Get unique number of non stop words


text <- c("In 2023 the power of data science lies in its ability to extract valuable 
         insights from complex information - unlocking new opportunities for 
         businesses and industries. #datascience #analytics #AI",
         "As the world becomes more data-driven, the demand for skilled 
         data scientists continues to soar. The future belongs to those 
         who can harness the power of data to drive innovation and growth.
         #career #datascience #bigdata",
         "With its ability to uncover hidden patterns and correlations, 
         data science has the potential to revolutionize fields as diverse 
         as healthcare, finance, and entertainment. The possibilities are 
         endless. #innovation #datascience #technology")

str_wrap(text)



# Notice that only replaced the first one.  To replace ALL of them, we
text <- str_replace_all(text, '\n', ' ')
text

# Get rid of extra white space
text <- str_squish(text)
text

# Remove all hashtags
text <- str_replace_all(text, "#\\w+", '')
text


# Remove all punctuation
text <- str_replace_all(text, '[:punct:]', ' ')
text

# Remove all numbers
text <- str_replace_all(text, '[:digit:]', ' ')
text

# Convert to Lower
text <- str_to_lower(text)
text



# Get rid of extra white space
text <- str_squish(text)
text

# 
words <- str_split(text, '\\s+')
words

# Get rid of English stop words
libary(tm)
stopWords <- stopwords('en')
stopWords

words <- lapply(words, function (x) x[!x %in% stopWords])
words

# Get number of unique words
sapply(words, function (x) length(unique(x)))
