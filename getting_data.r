# Tijl De Backer
# debacker.tijl@gmail.com
# 
# Course:
# Getting and Cleaning Data
#
# Assignment

# download file
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',destfile='ds.zip')

# unzip this file (this creates a new subdirectory 'UCI HAR dataset' in the root folder of the project)
unzip('ds.zip', junkpaths=TRUE)