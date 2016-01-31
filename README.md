This is the repo for the Getting and Cleaning Data Course Project.

The repo contains:
+ README.md
+ CodeBook.md: describes input data, transformation and output data
+ run_analysis.R: the R script that reads the input data, does the transformations and produces the datasets result1 and result2

## How the script works
The script first sets the working directory

The function createSet<-function(set), takes "test" or "train" as input to load the corresponding data set:
+ read the data, activies and subjects
+ set the column names from the features
+ use dplyr and piping:
+ only select columns for mean() and std() data
+ add the subjects column (with mutate)
+ add the activities column (with mutate)

The sets for train and test are rbind together to one set: result1
Result 1 is grouped by subject and activity and mean and stdev are calculated per group using dplyr's summarise_each.

Finaly result2 is written to text file: result.txt

