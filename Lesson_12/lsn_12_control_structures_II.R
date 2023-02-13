## SE370 AY22-2
## Lesson 12 - Control Structures II
## Updated by LTC David Beskow on 13 FEB 2023


## Last class, we talked a lot about loops and conditionals. 
# Today, we are going to focus on nesting control structures 
# and writing functions.

## FUNCTIONS

# A function is a set of statements organized together to 
# perform a specific task. R has many built-in functions, and
# also allows users to create their own functions.

# Let's write a simply function, "my_fun," that takes a numeric
# input and returns that input + 10.





# Functions can also take multiple inputs. Let's update "my_fun"
# so it adds two numbers together. Then use "my_fun" to add 279 and 45 together.





# Functions can include optional inputs. These are inputs where
# we set a default value. Let's create a function called 'power'
# that raises a number 'x' to the power 'n' where the default value for 'n'
# is 2.  




# Use this function to raise a number to the 2nd power with default setting



# Now use the power function to raise a number to the power 3




# If we want to apply a function to a list, vector, matrix, dataframe, etc
# we can use apply(), lapply(), or sapply()

# Read in the Australian weather data again. 




# On this data set, the Rainfall is in millimeters.
# Let's convert that to inches. First, write a function "convert_mm_in".
# Then, us an apply function to do the conversion. 
# 1 mm = 0.0393 inches.



# ...and add it onto the dataframe



## NESTED LOOPS AND CONDITIONALS
# We hit on this toward the end of lesson 12...but you can NEST loops
# and conditionals together to perform more advanced tasks!

# Let's look at the challenge problem from Lesson 12. We know some of 
# you have already done this, but others probably haven't:

# Members of the West High School Band were hard at
# work practicing for the annual Homecoming Parade.
# First they tried marching in rows of 12, but Andrew was
# left by himself to bring up the rear. Then the director
# told the band members to march in columns of eight,
# but Andrew was still left to march alone. Even when the
# band marched in rows of three, Andrew was left out.
# Finally, in exasperation, Andrew told the band director
# that they should march in rows of five in order to have
# all the rows filled. He was right. Given that there were at
# least 45 musicians on the field but fewer than 200 musicians,
# how many students were there in the West High
# School Band?




# Let's circle back to our weather data.
# A "Cold Day" is when the temperature at 3pm is lower than the 
# temperature at 9am (ie it gets colder as the day goes on)
# We want to see what location has the most "Cold Days".
# Look at each location individually (make it a separate dataframe!).
# Determine if each day is a "Cold Day" or not.
# Then find the total number of "Cold Days". Save them to
# a data structure of your choice. Which location has the most 
# "Cold Days"? 



## Grand Challenge
# Create a function that checks if a positive integer is a prime number?  
# Hint: a prime number is not divisible by any number between 2 and itself). 
