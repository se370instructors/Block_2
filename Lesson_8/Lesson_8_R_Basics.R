## SE370 AY 23-2
## Lesson 8: R and Rstudio Basics
# Edited by LTC Beskow

# Make sure you have cloned this project in R Studio Cloud

# Follow the prompts on this script. 

## Basic Math

# Add 4 and 8


# Add 6 and 12, and assign the result of this addition to the variable x


# Subtract 3 from 5


# Multiply 3 by 5


# Divide 12 by 4


# Raise 5 to the 3rd power


# Find the modulo (remainder) of twenty-eight and six


# Assign the value 7 to the variable y


# Subtract y from x


# Multiply x by y, and assign the result to the variable z

# Test out the following Math commands commands

x = 2.896

abs(x)
sqrt(x)
ceiling(x)
floor(x)
trunc(x)
round(x, digits = 1)
cos(x)
sin(x)
tan(x)
log(x)
log10(x)
exp(x)

# Lesson Grand Challenge
# Read about the haversine formula and great circle distance 
# at https://en.wikipedia.org/wiki/Haversine_formula

# Does this have any military applicability?



# Write R code that will calculate the haversine (or great 
# circle distance) given two lat/lon points?

# Write R code that will calculate the haversine (or great 
# circle distance) given two lat/lon points?  In this case, let's calculate
# the distance between New York and London
lon1 <-  -0.118092     #London lon
lat1 <- 51.509865      #London lat
lon2 <- -73.935242     #NYC Lon
lat2 <- 40.730610      #NYC lat
rad  <- 6371          #radius of earth


# Convert  to Radians


# Distance in kilometers between London and NYC