## SE370 AY22-2
## Lesson 13 - Data Manipulation in Base R


# Read in the data for the Summer Olympics, Winter Olympics, and the dictionary



#---Filtering
# Get the first 12 rows of the Summer Olympics data


# Get just the columns for year, athlete, event, and medal


# Access just the rows that contain data for USA athletes




#---Transforming
# Sort the dictionary by population


# Now sort it in descending order


# Check the data type for the Summer olympics medal column


# Convert that column to a factor...


# Create a new column from existing data
# In the winter dataset, create a new column called "summary"
# It should contain the Sport, Event, and Medal in this format:
# Biathlon, Military Patrol: Bronze


# Look at the dictionary. Create a column that contain the country's GDP
# (should be population * GDP per capita)




#---Joins
# Add a row to the summer dataframe. 
# Let's add data from the 2016 Olympics. Create the row of data and add the to the dataframe.
# Year = 2016. City = Rio. Sport = Archery, Discipline = Archery, Athlete = KU, Bonchan, Country = KOR, 
# Gender = Male, Event = Individual, Medal = Gold.




# Merge the summer data with the dictionary using an appropriate key




#---Plotting
# Use plot() to create a basic plot
# Let's filter for just the FVEY countries (US, Canada, UK, Aus, NZ) and plot the population v. GDP per capita
# hint: How do we filter for multiple items at once???




# We can use barplot() to plot a categorical variable. Plot country v. population



# What happened?
# Let's try again...



# Great! Now it's time to do some formatting...
# Take that bar plot, add a title "Population of FVEY Countries", add axis labels ("Country" and 
# "Population"), and give the bars some color!!! Turn this complete script in...

