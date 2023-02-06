## SE370 AY21-2
## Lesson 11 - Factors, DataFrames, and Lists
## Updated by LTC Beskow
## Last updated 2023-01-09

## Last class we focused on working with arrays and matrices, and understanding
## arithmetic operators, relational operators, and logicals. Today, we are going
## to focus on factors, dataframes, and lists -- which are other data structures
## that we will use frequently in R!

# Create a vector of integers from 1 to 5


# Append a 6 to this vector


# Now try to change the 5 to "five" and see what happens


# Create a vector of integers from 1 to 5 using a color operator


# Create a sequence from 5 to 250 by 5


# Calculate the length of this vector


# Create 100 random uniform numbers between 0 and 1 


# Calculate the min, mean, median, and max of this vector


# Let's look at dataframes now...
# What is a dataframe?


# ANS: Data Frame. A data frame is used for storing data tables. 
# It is a list of vectors of equal length.
# It's different than a matrix -- a matrix hold homogenous data (single data type.)
# A dataframe can contain heterogenous data types! (combo of numbers, characters,
# and factors!)

# Download the pokemon data (originally downloaded 
# from https://www.kaggle.com/datasets/rounakbanik/pokemon)
# This dataset contains information on all 802 Pokemon from all 
# Seven Generations of Pokemon
download.file('https://dscoe-data-2.s3.amazonaws.com/pokemon.csv', 'pokemon.csv')
df <- read_csv('pokemon.csv')

# Look at the first 6 rows of the dataframe


# What kind of data are we working with? What is the structure?


# What are the names of the dataframe?


# Look at the name vector (first column)


# Look at the Japanese Name column


# Use the table command to see how many are legendary


# Use the table command to see how many are in each generation


# A subset is a smaller version of our original dataframe. 
# Sometimes, we just want to select certain columns, or certain rows.


# Create two subset of the data frame, one that is legendary and one that is not 


# Calculate the mean base happiness of the legendary pokemon


# Calculate the mean base happiness of the not-legendary pokemon


# order your original data frame by happiness



# LISTS are the R objects which contain elements of different types like ??? 
# numbers, strings, vectors and another list inside it. A list can also 
# contain a matrix or a function as its elements. It's a very "all purpose"
# data structure!
abilities <- lapply(df$abilities, 
                    function(pyString) strsplit(gsub("\\]","",
                  gsub("\\[","",gsub("'","",pyString))),", ")[[1]])

# Lists are best when you have nested data, jagged data, you're using a loop 
# that is appending, or you have data of different classes


# Look at the structure of abilities.  This is a "jagged" data object


# To access an element in a list, we can use square brackets
# Let's access the 38th item in abilities


# What is the length of the 38th object in abilities?  How about the 40th?


#What is a factor?

# ANS: 

# Create a vector called students of student performance  - A , B, B, C, D, F, A



# Factor the vector and set the levels of the vector so that it is A > B > C > D > F



# Find the summary of the vector


# Display the different levels we have for students. Why might it be beneficial to 
# have these values set in a specific order?

# ANS: 

# Is student #4's grade higher than student #2's?


#---Challenge
#1. Download some crime data from: https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2
#2. Read the data into R
#3. Find 3 variables that *should* be factors and 3 that *should* be characters - why?





