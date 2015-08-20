# README.md

## General information
This repository contains my personal work for "Getting and Cleaning Data" course project on Coursera.

The goal of this study is to collect a dataset from UCI Machine Learning Repository, and build a tidy summary dataset following the
tidy data principles (see Hadley Wickham's publication on tidy data: http://vita.had.co.nz/papers/tidy-data.pdf)

The input is a collection of data on ~500 variables measured from the accelerometers of a Samsung Galaxy S smartphone.
A group of ~30 people was asked to perform different activities (laying, walking, standing, running, ...), 30-90 observations were recorded for each pair of subject/activity.

The output of this work is a text file 'tidyData.txt' containing the average value of each variable labelled 'std()' or 'mean()' for each pair of subject/activity.

## This repo includes the following files:

* This README.md file
* The code book: describing how the tidy dataset is organized (variables and rows)
* run_analysis.R: the R source file
* tidyData.txt : a copy of the output from the R source file

## Basic description of my R source file
Here is a brief summary of how my R source file 'run_analysis.R' works. More details can be found inside the source file, as commentaries.
* Download data from the Internet and unzip the files.
* Read all the files using read.table() or read.csv()
* Add variable names from information available in 'features.txt'
* Keep only variables labelled as 'std()' or 'mean()' using regular expressions.
* Merge different datasets into one single dataset.
* Add activity_labels from information available in 'activities_labels.txt'
* Create a tidy dataset using melt() and dcast() functions from reshape2 library.
* Write the output to a text file.

## Reminder: how to quickly load a text file into R
As explained on Coursera's discussion forums, you can easily load my output 'tidyData.txt' into R using the following code:
>data <- read.table("https://s3.amazonaws.com/coursera-uploads/user-da1e53c173b9fa27eaa7ca21/975115/asst-3/9e015b40474611e5ae7cdf9fee04d58a.txt",header=TRUE)

>View(data)

Source: https://class.coursera.org/getdata-031/forum/thread?thread_id=28#post-117
