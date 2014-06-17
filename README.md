### Readme.md

The scripts reads both datasets (X and y) for the train and the test data.
Next he creates one big set for the X data and one big set for the y data.
In the next step he reads the subject data for both train and test and turns them into one dataset.
At this point the distinction between train and test data is no longer present.

I now read the column names from a file and copy them on the column names of the measurements table: x_ds.  I assign 'subject' as the subjects_ds column name.

As only mean and standard deviation columns are required, I gather the relevant column names in two variables and project only these columns of the dataset in a new variable.

I now join the three tables into a big one (ds) and give the last cryptic column name a more readable one: activitycode.

To translate all these activity codes, I read the mapping from activity_labels.txt into a dataset and give the description the header 'activity'.  I don't do this for the code column, but this one is only joined on in hte next step and immediately thrown away.

The only thing left to do is, calculating the average per person and activity, which is done by the aggregate function and the result is written to the tidydataset.txt file.