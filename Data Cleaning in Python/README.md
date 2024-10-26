## Data Cleaning in Python
### Description:


### Tools: 
Python and Excel

### Data:
The dataset ['audible_raw.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Cleaning%20Data%20in%20Python/audible_raw.csv)is provided.

### Data Outputs: 
Task 1: Loading and Reviewing the Dataset
We’ll work with a dataset of audiobooks downloaded from audible.in, covering releases from 1998 through pre-planned launches in 2025. Let's start by loading the raw data.

Instructions:

Use pandas to load the audible_raw.csv file found in the data directory into a DataFrame named audible.
Display the first few rows of audible to inspect the data.
Task 2: Cleaning Text Data in Author and Narrator Columns
Let's clean up the author and narrator columns by removing "Writtenby:" and "Narratedby:" from the respective fields.

Instructions:

Remove 'Writtenby:' from the author column.
Remove 'Narratedby:' from the narrator column.
Display the changes to verify.
Task 3: Splitting the Stars Column into Ratings and Reviews Count
The stars column includes both the average rating and the count of reviews. Let's split this into two separate columns: rating_stars and n_ratings.

To start, we’ll examine some sample entries in the stars column using .sample().

Since there are instances labeled "Not rated yet," we’ll filter these out before sampling again. Next, replace "Not rated yet" with NaN, and use .str.extract() to create rating_stars and n_ratings columns.

Instructions:

Extract star ratings into rating_stars and review counts into n_ratings.
Convert both columns to float data types.
Lastly, remove the original stars column with .drop.
Task 4: Adjusting Data Types
It’s important to set columns to the correct data types for analysis.

Instructions:

Convert price to a float.
Set rating_stars as a categorical data type.
Convert releasedate to a datetime format.
Before converting price, remove any commas or the word "Free" from the entries.

For rating_stars, verify its unique values to confirm before changing the data type. Then, use .astype for the type change.

To convert releasedate, apply the to_datetime() function.

Task 5: Extracting Hours and Minutes from the Time Column
The time column combines hours and minutes. Let’s separate these and create a time_mins column with total minutes.

To normalize the text, we’ll:

Standardize "hr" and "hrs" to "hr"
Standardize "min" and "mins" to "min"
Convert "Less than 1 minute" to 1 minute.
Instructions:

Extract hours into the hours variable.
Extract minutes into the mins variable.
Create time_mins by combining hours and minutes.
Task 6: Verifying Data Ranges
To ensure values are within expected ranges, let's create histograms for each numeric column to inspect distributions.

Task 7: Identifying and Removing Duplicates
Let’s check for duplicates in the data.

Use .duplicated() combined with .sum() to count duplicates. Then, check for duplicates in a specific subset of columns (name, author, narrator, time_mins, and price).

We’ll keep records with the latest release date by applying .drop_duplicates() to this subset and setting keep=last.

Task 8: Handling Missing Values
Lastly, let’s identify any missing values.

Use .isna() with .sum() to count missing values by column.

Depending on our objectives, we may either keep or fill NaNs with specific values. If analyzing ratings distributions, we may consider dropping books without ratings, but for price analyses, it’s better to keep all entries as removing unrated books may skew results.

We’ll retain books without ratings for now.

Task 9: Saving the Cleaned Data
Finally, we’ll save the cleaned dataset using .to_csv with index=False to avoid copying the current index into the output file.

### Code:
[Customer Analytics: Data Preparation for Modeling](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Customer%20Analytics%3A%20Data%20Preparation%20for%20Modeling/customer_train.ipynb)
