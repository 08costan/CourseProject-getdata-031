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
* The code book, describing how my R code is working, how the tidy dataset is organized (variables and rows)
* run_analysis.R: the R source file
* tidyData.txt : a copy of the output from the R source file
